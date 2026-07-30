#!/usr/bin/env python3
"""Synchronize ByteDance Seed's public-paper catalogue.

The Seed page currently reports 230 records, but its public SSR payload emits
212 published records. This script preserves both numbers instead of inventing
metadata for the 18 records that the public endpoint does not return.
"""

from __future__ import annotations

import argparse
import html
import json
import re
import shutil
import subprocess
import sys
import tempfile
from concurrent.futures import ThreadPoolExecutor, as_completed
from datetime import datetime, timezone
from pathlib import Path
from typing import Any
from urllib.parse import quote_plus, urlencode, urljoin
from urllib.request import Request, urlopen


BASE_URL = "https://seed.bytedance.com/zh/public_papers"
PAGE_SIZE = 20
USER_AGENT = "Mozilla/5.0 (compatible; AwesomeTeamSeedResearch/1.0)"
ROUTER_DATA_RE = re.compile(
    r"<script>window\._ROUTER_DATA = (\{.*?\})</script>", re.DOTALL
)
ARXIV_ID_RE = re.compile(
    r"arxiv\.org/(?:abs|pdf|html)/(\d{4}\.\d{4,5})(?:v\d+)?", re.IGNORECASE
)
FIGURE_RE = re.compile(r"<figure\b[^>]*>.*?</figure>", re.DOTALL | re.IGNORECASE)
IMG_RE = re.compile(
    r"<img\b[^>]*\bsrc\s*=\s*[\"']([^\"']+)[\"']", re.IGNORECASE
)
CAPTION_RE = re.compile(
    r"<figcaption\b[^>]*>(.*?)</figcaption>", re.DOTALL | re.IGNORECASE
)
BASE_RE = re.compile(r"<base\b[^>]*\bhref\s*=\s*[\"']([^\"']+)[\"']", re.IGNORECASE)
TAG_RE = re.compile(r"<[^>]+>")
SENTENCE_RE = re.compile(r"(?<=[.!?])\s+(?=[A-Z0-9])")
KNOWN_ARXIV_BY_TITLE = {
    "Seed3D 2.0: Advancing High-Fidelity Simulation-Ready 3D Content Generation": "2605.13862",
    "Seed-Thinking-v1.5: Advancing Superb Reasoning Models with Reinforcement Learning": "2504.13914",
    "Polybasic Speculative Decoding Through a Theoretical Perspective": "2510.26527",
    "X-NeMo: Expressive Neural Motion Reenactment via Disentangled Latent Attention": "2507.23143",
    "Seed-TTS: A Family of High-Quality Versatile Speech Generation Models": "2406.02430",
}


def fetch_text(url: str, timeout: int = 45) -> str:
    request = Request(url, headers={"User-Agent": USER_AGENT})
    with urlopen(request, timeout=timeout) as response:
        return response.read().decode("utf-8", "ignore")


def clean_text(value: str) -> str:
    value = TAG_RE.sub(" ", value)
    value = html.unescape(value)
    return re.sub(r"\s+", " ", value).strip()


def fetch_publication_page(offset: int) -> tuple[int, dict[str, Any]]:
    query = urlencode(
        {
            "view_from": "research",
            "order_desc": "true",
            "offset": offset,
        }
    )
    source = fetch_text(f"{BASE_URL}?{query}")
    match = ROUTER_DATA_RE.search(source)
    if not match:
        raise RuntimeError(f"Seed router data missing at offset {offset}")
    payload = json.loads(match.group(1))
    page = payload["loaderData"]["(locale$)/public_papers/page"]
    return offset, page


def crawl_publications() -> tuple[list[dict[str, Any]], int]:
    first_offset, first_page = fetch_publication_page(0)
    del first_offset
    reported_total = int(first_page["total"])
    offsets = list(range(PAGE_SIZE, reported_total, PAGE_SIZE))
    pages = [(0, first_page)]

    with ThreadPoolExecutor(max_workers=6) as executor:
        futures = [executor.submit(fetch_publication_page, offset) for offset in offsets]
        for future in as_completed(futures):
            pages.append(future.result())

    records: dict[int, dict[str, Any]] = {}
    for _, page in sorted(pages):
        for item in page.get("article_list", []):
            records[int(item["ArticleMeta"]["ID"])] = item

    items = list(records.values())
    items.sort(
        key=lambda item: (
            int(item["ArticleMeta"].get("PublishDate") or 0),
            int(item["ArticleMeta"].get("ID") or 0),
        ),
        reverse=True,
    )
    return items, reported_total


def extract_arxiv_id(links: list[str]) -> str | None:
    for link in links:
        match = ARXIV_ID_RE.search(link)
        if match:
            return match.group(1)
    return None


def extractive_tldr(abstract: str) -> str:
    sentences = [part.strip() for part in SENTENCE_RE.split(abstract) if part.strip()]
    if not sentences:
        return abstract[:420].strip()

    method_markers = (
        "we introduce",
        "we present",
        "we propose",
        "this work",
        "we develop",
        "we study",
        "we investigate",
        "we show",
    )
    result_markers = (
        "outperform",
        "achieve",
        "improve",
        "demonstrate",
        "result",
        "state-of-the-art",
        "sota",
        "surpass",
        "reduce",
        "speedup",
    )

    method = next(
        (sentence for sentence in sentences if any(m in sentence.lower() for m in method_markers)),
        sentences[0],
    )
    result = next(
        (
            sentence
            for sentence in reversed(sentences)
            if sentence != method and any(m in sentence.lower() for m in result_markers)
        ),
        "",
    )
    summary = f"{method} {result}".strip()
    if len(summary) > 430:
        summary = summary[:427].rsplit(" ", 1)[0] + "…"
    return summary


def abstract_signals(abstract: str, areas: list[str], teams: list[str]) -> list[str]:
    signal_terms = [
        "reasoning",
        "generation",
        "training",
        "inference",
        "multimodal",
        "robot",
        "speech",
        "video",
        "image",
        "language",
        "protein",
        "molecular",
        "reinforcement",
        "diffusion",
        "transformer",
        "agent",
        "system",
    ]
    lower = abstract.lower()
    ranked = sorted(
        ((lower.count(term), term) for term in signal_terms if lower.count(term)),
        reverse=True,
    )
    signals = [term.upper() for _, term in ranked[:3]]
    for value in teams + areas:
        cleaned = value.strip()
        if cleaned and cleaned.upper() not in signals:
            signals.append(cleaned.upper())
        if len(signals) >= 4:
            break
    return signals[:4] or ["RESEARCH", "METHOD", "EVALUATION"]


def first_arxiv_figure(arxiv_id: str) -> dict[str, str] | None:
    sources = [
        f"https://arxiv.org/html/{arxiv_id}",
        f"https://ar5iv.labs.arxiv.org/html/{arxiv_id}",
    ]
    for source_url in sources:
        try:
            source = fetch_text(source_url, timeout=35)
        except Exception:
            continue
        base_match = BASE_RE.search(source)
        image_base = (
            urljoin(source_url, html.unescape(base_match.group(1)))
            if base_match
            else source_url.rstrip("/") + "/"
        )
        for figure_html in FIGURE_RE.findall(source):
            if "ltx_missing_image" in figure_html:
                continue
            image_match = IMG_RE.search(figure_html)
            if not image_match:
                continue
            raw_image_url = html.unescape(image_match.group(1))
            if (
                not base_match
                and source_url.startswith("https://arxiv.org/html/")
                and re.match(r"\d{4}\.\d{4,5}v\d+/", raw_image_url)
            ):
                image_url = urljoin("https://arxiv.org/html/", raw_image_url)
            else:
                image_url = urljoin(image_base, raw_image_url)
            image_path = image_url.split("?", 1)[0].lower()
            if not image_path.endswith((".png", ".jpg", ".jpeg", ".webp", ".gif")):
                continue
            caption_match = CAPTION_RE.search(figure_html)
            caption = (
                clean_text(caption_match.group(1))
                if caption_match
                else "论文首个公开图表"
            )
            return {
                "kind": "paper-figure",
                "image_url": image_url,
                "source_url": source_url,
                "caption": caption[:520],
            }
    return None


def enrich_figure(record: dict[str, Any]) -> tuple[int, dict[str, str] | None]:
    arxiv_id = record.get("arxiv_id")
    return int(record["id"]), first_arxiv_figure(arxiv_id) if arxiv_id else None


def normalize_record(item: dict[str, Any]) -> dict[str, Any]:
    meta = item["ArticleMeta"]
    content_en = item.get("ArticleSubContentEn") or {}
    content_zh = item.get("ArticleSubContentZh") or {}
    title = clean_text(content_zh.get("Title") or content_en.get("Title") or "")
    abstract = clean_text(content_zh.get("Abstract") or content_en.get("Abstract") or "")
    title_key = content_en.get("TitleKey") or content_zh.get("TitleKey") or ""
    links = [
        entry.get("Link", "").strip()
        for entry in meta.get("ExternalLinks", [])
        if entry.get("Link", "").strip()
    ]
    arxiv_id = extract_arxiv_id(links) or KNOWN_ARXIV_BY_TITLE.get(title)
    arxiv_url = f"https://arxiv.org/abs/{arxiv_id}" if arxiv_id else None
    arxiv_search_url = (
        None
        if arxiv_url
        else f"https://arxiv.org/search/?query={quote_plus(title)}&searchtype=title"
    )
    publish_ms = int(meta.get("PublishDate") or 0)
    published_at = datetime.fromtimestamp(
        publish_ms / 1000, tz=timezone.utc
    ).strftime("%Y-%m-%d")
    areas = [
        clean_text(area.get("ResearchAreaNameZh") or area.get("ResearchAreaName") or "")
        for area in meta.get("ResearchArea", [])
    ]
    teams = [
        clean_text(team.get("NameZh") or team.get("Name") or "")
        for team in meta.get("WorkingTeam", [])
    ]
    return {
        "id": int(meta["ID"]),
        "article_id": int(meta.get("ArticleID") or 0),
        "title": title,
        "slug": title_key,
        "published_at": published_at,
        "year": int(published_at[:4]),
        "authors": clean_text(meta.get("Author") or ""),
        "venue": clean_text(meta.get("Journal") or ""),
        "areas": [area for area in areas if area],
        "teams": [team for team in teams if team],
        "abstract": abstract,
        "tldr": extractive_tldr(abstract),
        "tldr_method": "extractive",
        "external_links": links,
        "official_url": f"https://seed.bytedance.com/zh/public_papers/{title_key}",
        "arxiv_id": arxiv_id,
        "arxiv_url": arxiv_url,
        "arxiv_search_url": arxiv_search_url,
        "figure": None,
        "abstract_signals": abstract_signals(abstract, areas, teams),
    }


def pdf_url_for_record(record: dict[str, Any]) -> str | None:
    if record.get("arxiv_id"):
        return f"https://arxiv.org/pdf/{record['arxiv_id']}"
    if not record.get("external_links"):
        return None

    link = record["external_links"][0]
    if "github.com/" in link and "/blob/" in link:
        owner_repo, path = link.split("github.com/", 1)[1].split("/blob/", 1)
        branch, file_path = path.split("/", 1)
        return f"https://raw.githubusercontent.com/{owner_repo}/{branch}/{file_path}"
    if "biorxiv.org/" in link and link.endswith(".article-info"):
        return link[: -len(".article-info")] + ".full.pdf"
    if "nature.com/articles/" in link and not link.endswith(".pdf"):
        return link + ".pdf"
    if ".pdf" in link.lower() or "openreview.net/pdf" in link:
        return link
    return None


def render_pdf_preview(
    record: dict[str, Any], image_root: Path
) -> tuple[int, dict[str, str] | None]:
    converter = shutil.which("pdftoppm")
    pdf_url = pdf_url_for_record(record)
    if not converter or not pdf_url:
        return int(record["id"]), None

    image_root.mkdir(parents=True, exist_ok=True)
    destination = image_root / f"{record['id']}.jpg"
    if destination.exists() and destination.stat().st_size > 10_000:
        return int(record["id"]), {
            "kind": "pdf-page",
            "image_url": f"assets/seed-paper-figures/{destination.name}",
            "source_url": record["arxiv_url"]
            or record["external_links"][0]
            or record["official_url"],
            "caption": "论文 PDF 第 2 页预览；用于补足未公开 HTML 图表的论文。",
        }

    try:
        request = Request(pdf_url, headers={"User-Agent": USER_AGENT})
        with urlopen(request, timeout=60) as response:
            pdf_bytes = response.read()
        if not pdf_bytes.startswith(b"%PDF"):
            return int(record["id"]), None
        with tempfile.TemporaryDirectory(prefix="seed-paper-") as temp_dir:
            pdf_path = Path(temp_dir) / "paper.pdf"
            output_stem = Path(temp_dir) / "preview"
            pdf_path.write_bytes(pdf_bytes)
            command = [
                converter,
                "-f",
                "2",
                "-l",
                "2",
                "-scale-to",
                "1200",
                "-jpeg",
                "-singlefile",
                "-jpegopt",
                "quality=78",
                str(pdf_path),
                str(output_stem),
            ]
            result = subprocess.run(
                command, capture_output=True, check=False, timeout=60
            )
            rendered = output_stem.with_suffix(".jpg")
            if result.returncode != 0 or not rendered.exists():
                command = [
                    converter,
                    "-f",
                    "1",
                    "-l",
                    "1",
                    "-scale-to",
                    "1200",
                    "-jpeg",
                    "-singlefile",
                    "-jpegopt",
                    "quality=78",
                    str(pdf_path),
                    str(output_stem),
                ]
                result = subprocess.run(
                    command, capture_output=True, check=False, timeout=60
                )
            if result.returncode != 0 or not rendered.exists():
                return int(record["id"]), None
            shutil.copyfile(rendered, destination)
    except Exception:
        return int(record["id"]), None

    return int(record["id"]), {
        "kind": "pdf-page",
        "image_url": f"assets/seed-paper-figures/{destination.name}",
        "source_url": record["arxiv_url"]
        or record["external_links"][0]
        or record["official_url"],
        "caption": "论文 PDF 第 2 页预览；用于补足未公开 HTML 图表的论文。",
    }


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "--output",
        type=Path,
        default=Path(__file__).resolve().parents[1] / "data" / "seed-papers.json",
    )
    parser.add_argument(
        "--reuse",
        action="store_true",
        help="Reuse previously resolved paper figures when possible.",
    )
    args = parser.parse_args()

    print("Fetching Seed publication pages…", file=sys.stderr)
    raw_items, reported_total = crawl_publications()
    records = [normalize_record(item) for item in raw_items]

    previous_figures: dict[int, dict[str, str]] = {}
    if args.reuse and args.output.exists():
        previous = json.loads(args.output.read_text())
        previous_figures = {
            int(record["id"]): record["figure"]
            for record in previous.get("papers", [])
            if record.get("figure")
            and record["figure"].get("kind") != "abstract-map"
        }

    pending = []
    for record in records:
        if record["id"] in previous_figures:
            record["figure"] = previous_figures[record["id"]]
        elif record["arxiv_id"]:
            pending.append(record)

    print(f"Resolving figures for {len(pending)} arXiv papers…", file=sys.stderr)
    with ThreadPoolExecutor(max_workers=6) as executor:
        futures = [executor.submit(enrich_figure, record) for record in pending]
        figures: dict[int, dict[str, str] | None] = {}
        for future in as_completed(futures):
            record_id, figure = future.result()
            figures[record_id] = figure

    for record in records:
        if not record["figure"]:
            record["figure"] = figures.get(record["id"])

    pdf_pending = [record for record in records if not record["figure"]]
    image_root = args.output.parent.parent / "assets" / "seed-paper-figures"
    print(
        f"Rendering PDF previews for {len(pdf_pending)} remaining papers…",
        file=sys.stderr,
    )
    with ThreadPoolExecutor(max_workers=4) as executor:
        futures = [
            executor.submit(render_pdf_preview, record, image_root)
            for record in pdf_pending
        ]
        pdf_figures: dict[int, dict[str, str] | None] = {}
        for future in as_completed(futures):
            record_id, figure = future.result()
            pdf_figures[record_id] = figure

    for record in records:
        if not record["figure"]:
            record["figure"] = pdf_figures.get(record["id"])
        if not record["figure"]:
            record["figure"] = {
                "kind": "abstract-map",
                "image_url": None,
                "source_url": record["official_url"],
                "caption": "由公开摘要生成的研究信号图；原文未提供可稳定抓取的 HTML 图表。",
            }

    retrieved_count = len(records)
    paper_figures = sum(
        record["figure"]["kind"] == "paper-figure" for record in records
    )
    pdf_previews = sum(
        record["figure"]["kind"] == "pdf-page" for record in records
    )
    direct_arxiv = sum(bool(record["arxiv_url"]) for record in records)
    payload = {
        "source": BASE_URL
        + "?view_from=research&order_desc=true&offset=0",
        "retrieved_at": datetime.now(timezone.utc).isoformat(timespec="seconds"),
        "reported_total": reported_total,
        "retrieved_count": retrieved_count,
        "unexposed_count": max(0, reported_total - retrieved_count),
        "completeness_note": (
            "Seed's public counter reports "
            f"{reported_total}, while its public paginated payload currently emits "
            f"{retrieved_count} published records. No metadata was fabricated for "
            f"the {max(0, reported_total - retrieved_count)} counter-only records."
        ),
        "direct_arxiv_count": direct_arxiv,
        "paper_figure_count": paper_figures,
        "pdf_preview_count": pdf_previews,
        "abstract_map_count": retrieved_count - paper_figures - pdf_previews,
        "papers": records,
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(
        json.dumps(payload, ensure_ascii=False, indent=2) + "\n",
        encoding="utf-8",
    )
    print(
        f"Wrote {retrieved_count} records ({direct_arxiv} direct arXiv, "
        f"{paper_figures} paper figures, {pdf_previews} PDF previews) to {args.output}",
        file=sys.stderr,
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
