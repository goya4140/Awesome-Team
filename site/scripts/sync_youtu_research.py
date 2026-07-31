#!/usr/bin/env python3
"""Build the Tencent Youtu public research archive from maintained public sources.

The legacy Youtu website is retained as historical identity evidence, but it is not
treated as the only activity feed. Current evidence comes from the maintained
TencentYoutuResearch organization, current team-leader homepages, and paper links
published by those sources.
"""

from __future__ import annotations

import html
import json
import os
import re
import urllib.parse
import urllib.request
import xml.etree.ElementTree as ET
from collections import Counter
from datetime import datetime, timezone
from pathlib import Path


ROOT = Path(__file__).resolve().parents[2]
OUTPUT = ROOT / "site" / "data" / "youtu-research.json"
KE_LI_URL = "https://keli.info/"
XING_SUN_URL = "https://www.sunxing.org/"
YULEI_QIN_URL = "https://yuleichin.github.io/"
GITHUB_ORG = "TencentYoutuResearch"
WINDOW_START = "2024-07-31"
USER_AGENT = "AwesomeTeamCatalog/1.0 (+https://github.com/goya4140/awesome-team)"


REPOSITORY_PAPERS = [
    {
        "title": "L2P: Unlocking Latent Potential for Pixel Generation",
        "arxiv_id": "2605.12013",
        "code_url": "https://github.com/TencentYoutuResearch/T2I-L2P",
        "venue": "arXiv, 2026",
        "topic": "Generative Vision",
    },
    {
        "title": "APTBench: Benchmarking Agentic Potential of Base LLMs During Pre-Training",
        "arxiv_id": "2510.24397",
        "code_url": "https://github.com/TencentYoutuResearch/APTBench",
        "venue": "arXiv, 2025",
        "topic": "Agent & Reasoning",
    },
    {
        "title": "ASPD: Unlocking Adaptive Serial-Parallel Decoding by Exploring Intrinsic Parallelism in LLMs",
        "arxiv_id": "2508.08895",
        "code_url": "https://github.com/TencentYoutuResearch/LLM-ASPD",
        "venue": "arXiv, 2025",
        "topic": "LLM Systems",
    },
    {
        "title": "Process-Level Trajectory Evaluation for Environment Configuration in Software Engineering Agents",
        "arxiv_id": "2510.25694",
        "code_url": "https://github.com/TencentYoutuResearch/EnConda-Bench",
        "venue": "ICLR, 2026",
        "topic": "Agent & Reasoning",
    },
    {
        "title": "Youtu-Agent: Scaling Agent Productivity with Automated Generation and Hybrid Policy Optimization",
        "arxiv_id": "2512.24615",
        "code_url": "https://github.com/Tencent/Youtu-agent",
        "venue": "arXiv, 2025",
        "topic": "Agent & Reasoning",
    },
    {
        "title": "Training-Free Group Relative Policy Optimization",
        "arxiv_id": "2510.08191",
        "code_url": "https://github.com/Tencent/Youtu-agent",
        "venue": "arXiv, 2025",
        "topic": "Agent & Reasoning",
    },
]


def fetch_text(url: str) -> str:
    request = urllib.request.Request(url, headers={"User-Agent": USER_AGENT})
    with urllib.request.urlopen(request, timeout=45) as response:
        return response.read().decode("utf-8", errors="replace")


def clean_fragment(fragment: str) -> str:
    fragment = re.sub(r"<br\s*/?>", "\n", fragment, flags=re.I)
    fragment = re.sub(r"<img\b[^>]*>", "", fragment, flags=re.I)
    fragment = re.sub(r"<[^>]+>", "", fragment)
    return html.unescape(fragment).replace("\xa0", " ").strip()


def normalize_space(value: str) -> str:
    return re.sub(r"\s+", " ", value).strip()


def classify_topic(title: str) -> str:
    lowered = title.lower()
    if any(term in lowered for term in ("agent", "reasoning", "instruction-following", "reward model", "trajectory")):
        return "Agent & Reasoning"
    if any(term in lowered for term in ("multimodal", "vision-language", "speech", "audio", "video-mme", "image-text")):
        return "Multimodal"
    if any(term in lowered for term in ("quality assessment", "object detection", "visual perception", "image", "vision", "diffusion")):
        return "Computer Vision"
    if any(term in lowered for term in ("transformer", "distillation", "semi-supervised", "token expansion")):
        return "Efficient Learning"
    if any(term in lowered for term in ("language model", "llm", "factuality")):
        return "LLM"
    return "Machine Learning"


def extract_links(fragment: str) -> list[dict[str, str]]:
    links = []
    for href, label in re.findall(r'<a\b[^>]*href=["\']([^"\']+)["\'][^>]*>(.*?)</a>', fragment, flags=re.I | re.S):
        links.append({"label": normalize_space(clean_fragment(label)), "url": html.unescape(href)})
    return links


def parse_ke_li_publications(source: str) -> list[dict]:
    headings = list(re.finditer(r'<h3\b[^>]*id=["\'](20\d{2})["\'][^>]*>', source, flags=re.I))
    papers = []
    for index, heading in enumerate(headings):
        year = int(heading.group(1))
        if year < 2024:
            continue
        end = headings[index + 1].start() if index + 1 < len(headings) else len(source)
        section = source[heading.end():end]
        for row in re.findall(r"<tr\b[^>]*>\s*<td\b[^>]*>(.*?)</td>\s*</tr>", section, flags=re.I | re.S):
            title_match = re.search(r"<strong\b[^>]*>(.*?)</strong>", row, flags=re.I | re.S)
            if not title_match:
                continue
            title = normalize_space(clean_fragment(title_match.group(1)))
            row_without_links = re.sub(r"<a\b[^>]*>.*?</a>", "", row, flags=re.I | re.S)
            lines = [normalize_space(line) for line in clean_fragment(row_without_links).splitlines() if normalize_space(line)]
            authors = lines[1].rstrip(".") if len(lines) > 1 else ""
            venue = lines[2].rstrip(".") if len(lines) > 2 else str(year)
            links = extract_links(row)
            paper_link = next((link["url"] for link in links if link["label"].lower() == "paper"), "")
            code_link = next((link["url"] for link in links if link["label"].lower() == "code"), "")
            arxiv_match = re.search(r"arxiv\.org/(?:abs|pdf)/([0-9]{4}\.[0-9]{4,5})", paper_link)
            papers.append({
                "title": title,
                "year": year,
                "venue": venue,
                "authors": authors,
                "paper_url": paper_link,
                "code_url": code_link or None,
                "arxiv_id": arxiv_match.group(1) if arxiv_match else None,
                "topic": classify_topic(title),
                "attribution": {
                    "kind": "current_team_manager_publication_index",
                    "label": "Ke Li 公开论文索引",
                    "source_url": KE_LI_URL,
                },
            })
    return papers


def parse_xing_sun_projects(source: str) -> list[dict]:
    projects = []
    for card in re.findall(r'<div\s+class=["\']repo-card["\']>(.*?)</div>\s*</div>', source, flags=re.I | re.S):
        link = re.search(r'<h4>\s*<a\s+href=["\']([^"\']+)["\'][^>]*>(.*?)</a>', card, flags=re.I | re.S)
        if not link:
            continue
        description = re.search(r"<p>(.*?)</p>", card, flags=re.I | re.S)
        tags = [normalize_space(clean_fragment(tag)) for tag in re.findall(r'<span\s+class=["\']tag["\']>(.*?)</span>', card, flags=re.I | re.S)]
        projects.append({
            "name": normalize_space(clean_fragment(link.group(2))),
            "url": html.unescape(link.group(1)),
            "description": normalize_space(clean_fragment(description.group(1))) if description else "",
            "tags": tags,
            "source_url": XING_SUN_URL,
        })
    return projects


def fetch_github_repositories() -> list[dict]:
    query = urllib.parse.urlencode({"per_page": 100, "type": "public", "sort": "pushed", "direction": "desc"})
    records = json.loads(fetch_text(f"https://api.github.com/orgs/{GITHUB_ORG}/repos?{query}"))
    return [{
        "name": record["name"],
        "url": record["html_url"],
        "description": record.get("description") or "",
        "stars": record["stargazers_count"],
        "language": record.get("language"),
        "created_at": record["created_at"],
        "pushed_at": record["pushed_at"],
        "archived": record["archived"],
        "recent": record["pushed_at"][:10] >= WINDOW_START,
    } for record in records]


def fetch_arxiv_metadata(ids: list[str]) -> dict[str, dict]:
    ids = sorted(set(filter(None, ids)))
    if not ids:
        return {}
    query = urllib.parse.urlencode({"id_list": ",".join(ids), "max_results": len(ids)})
    try:
        source = fetch_text(f"https://export.arxiv.org/api/query?{query}")
    except Exception as error:  # arXiv enrichment is optional; source indexes remain usable.
        print(f"warning: arXiv enrichment failed: {error}")
        return {}
    root = ET.fromstring(source)
    namespace = {"atom": "http://www.w3.org/2005/Atom"}
    metadata = {}
    for entry in root.findall("atom:entry", namespace):
        entry_url = entry.findtext("atom:id", default="", namespaces=namespace)
        match = re.search(r"/abs/([^v]+)", entry_url)
        if not match:
            continue
        arxiv_id = match.group(1)
        metadata[arxiv_id] = {
            "arxiv_url": f"https://arxiv.org/abs/{arxiv_id}",
            "published_at": entry.findtext("atom:published", default="", namespaces=namespace),
            "abstract": normalize_space(entry.findtext("atom:summary", default="", namespaces=namespace)),
            "arxiv_title": normalize_space(entry.findtext("atom:title", default="", namespaces=namespace)),
            "arxiv_authors": [normalize_space(author.findtext("atom:name", default="", namespaces=namespace)) for author in entry.findall("atom:author", namespace)],
        }
    return metadata


def repository_papers() -> list[dict]:
    records = []
    for paper in REPOSITORY_PAPERS:
        records.append({
            **paper,
            "year": int(paper["venue"].rsplit(" ", 1)[-1]),
            "paper_url": f"https://arxiv.org/abs/{paper['arxiv_id']}",
            "authors": "",
            "attribution": {
                "kind": "official_youtu_repository",
                "label": "Youtu 官方研究仓库",
                "source_url": paper["code_url"],
            },
        })
    return records


def merge_and_enrich_papers(indexed: list[dict], repository_indexed: list[dict]) -> list[dict]:
    by_title = {normalize_space(paper["title"]).casefold(): paper for paper in indexed}
    for paper in repository_indexed:
        key = normalize_space(paper["title"]).casefold()
        if key in by_title:
            existing = by_title[key]
            existing["code_url"] = existing.get("code_url") or paper.get("code_url")
            existing["attribution"] = paper["attribution"]
        else:
            indexed.append(paper)
            by_title[key] = paper

    arxiv = fetch_arxiv_metadata([paper.get("arxiv_id") for paper in indexed])
    for paper in indexed:
        metadata = arxiv.get(paper.get("arxiv_id"), {})
        paper.update(metadata)
        paper["paper_url"] = metadata.get("arxiv_url") or paper.get("paper_url")
        if not paper.get("authors") and metadata.get("arxiv_authors"):
            paper["authors"] = ", ".join(metadata["arxiv_authors"])
    return sorted(indexed, key=lambda paper: (paper["year"], paper.get("published_at") or "", paper["title"]), reverse=True)


def main() -> None:
    ke_li_source = fetch_text(KE_LI_URL)
    xing_sun_source = fetch_text(XING_SUN_URL)
    papers = merge_and_enrich_papers(parse_ke_li_publications(ke_li_source), repository_papers())
    repositories = fetch_github_repositories()
    projects = parse_xing_sun_projects(xing_sun_source)
    topic_counts = Counter(paper["topic"] for paper in papers)
    year_counts = Counter(str(paper["year"]) for paper in papers)
    checked_at = os.environ.get("CHECKED_AT") or datetime.now(timezone.utc).date().isoformat()

    payload = {
        "schema_version": 1,
        "checked_at": checked_at,
        "retrieved_at": datetime.now(timezone.utc).isoformat().replace("+00:00", "Z"),
        "scope": {
            "start_date": WINDOW_START,
            "description": "Current public Youtu research evidence assembled from maintained research repositories and current team-leader publication indexes.",
            "boundary": "This is a verifiable public working set, not a claimed internal or exhaustive employee/publication roster.",
        },
        "sources": [
            {"kind": "legacy_official_site", "url": "https://open.youtu.qq.com/", "use": "historical team identity"},
            {"kind": "official_research_github", "url": f"https://github.com/{GITHUB_ORG}", "use": "current repositories and release activity"},
            {"kind": "current_team_manager", "url": KE_LI_URL, "use": "role evidence and 2024–2026 publication index"},
            {"kind": "current_team_manager", "url": XING_SUN_URL, "use": "role evidence, research directions, projects and selected publications"},
            {"kind": "current_senior_researcher", "url": YULEI_QIN_URL, "use": "role evidence and current agent/LLM activity"},
        ],
        "counts": {
            "papers": len(papers),
            "papers_with_arxiv_abstracts": sum(bool(paper.get("abstract")) for paper in papers),
            "github_repositories": len(repositories),
            "recent_github_repositories": sum(repository["recent"] for repository in repositories),
            "leader_curated_projects": len(projects),
        },
        "topic_counts": dict(topic_counts.most_common()),
        "year_counts": dict(sorted(year_counts.items(), reverse=True)),
        "projects": projects,
        "repositories": repositories,
        "papers": papers,
    }
    OUTPUT.parent.mkdir(parents=True, exist_ok=True)
    OUTPUT.write_text(json.dumps(payload, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(
        f"wrote {OUTPUT}: papers={len(papers)}, repositories={len(repositories)}, "
        f"recent_repositories={payload['counts']['recent_github_repositories']}, projects={len(projects)}"
    )


if __name__ == "__main__":
    main()
