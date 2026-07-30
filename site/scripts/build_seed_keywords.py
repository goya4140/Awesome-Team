#!/usr/bin/env python3
"""Build a reproducible keyword map from the public Seed paper abstracts."""

from __future__ import annotations

import json
import re
from dataclasses import asdict, dataclass
from pathlib import Path

from PIL import Image, ImageDraw, ImageFont


ROOT = Path(__file__).resolve().parents[1]
PAPERS_PATH = ROOT / "data" / "seed-papers.json"
OUTPUT_DATA = ROOT / "data" / "seed-keywords.json"
OUTPUT_IMAGE = ROOT / "assets" / "seed-keywords.png"

WIDTH = 1800
HEIGHT = 1080

INK = "#151515"
MUTED = "#6f727d"
LINE = "#dfe1e8"
SURFACE = "#ffffff"
BG = "#f5f6fb"
BLUE = "#3c56f4"
BLUE_SOFT = "#edf0ff"
INDIGO = "#5a45e8"
VIOLET = "#7a3de8"
VIOLET_SOFT = "#f2ebff"


@dataclass(frozen=True)
class KeywordSpec:
    label: str
    pattern: str
    category: str


@dataclass(frozen=True)
class KeywordResult:
    keyword: str
    category: str
    document_count: int
    document_share: float
    mention_count: int


# This is an intentionally research-specific vocabulary. Generic abstract language
# such as "paper", "method", "results", "novel", "state-of-the-art", "model",
# and "dataset" is excluded by construction rather than merely down-weighted.
KEYWORDS = [
    KeywordSpec("Large Language Models", r"\b(?:large language models?|llms?)\b", "Language & Reasoning"),
    KeywordSpec("Reasoning", r"\breason(?:ing|er|ers)\b", "Language & Reasoning"),
    KeywordSpec("Reinforcement Learning", r"\breinforcement learning\b|\brl\b", "Language & Reasoning"),
    KeywordSpec("Code Intelligence", r"\bcode\b|\bcoding\b|\bprogram(?:ming| synthesis)\b|\bsoftware\b", "Language & Reasoning"),
    KeywordSpec("Agents", r"\bagent(?:ic|s)?\b", "Language & Reasoning"),
    KeywordSpec("Alignment", r"\balign(?:ment|ed|ing)\b|\bpreference optimization\b|\brlhf\b", "Language & Reasoning"),
    KeywordSpec("Long Context & Memory", r"\blong[- ]context\b|\bcontext window\b|\bmemory\b", "Language & Reasoning"),
    KeywordSpec("Retrieval", r"\bretriev(?:al|e|ed|ing)\b|\brag\b", "Language & Reasoning"),
    KeywordSpec("Diffusion Models", r"\bdiffusion(?: models?)?\b", "Multimodal & Generation"),
    KeywordSpec("Image Generation", r"\bimage(?:s)?(?: generation| synthesis| editing)?\b|\btext[- ]to[- ]image\b", "Multimodal & Generation"),
    KeywordSpec("Video Generation", r"\bvideo(?:s)?(?: generation| synthesis| editing)?\b", "Multimodal & Generation"),
    KeywordSpec("Multimodal Learning", r"\bmulti[- ]?modal\b", "Multimodal & Generation"),
    KeywordSpec("Vision–Language", r"\bvision[- ]language\b|\bvisual[- ]language\b|\bvlms?\b", "Multimodal & Generation"),
    KeywordSpec("Speech & Audio", r"\bspeech\b|\baudio\b|\bvoice\b|\bacoustic\b", "Multimodal & Generation"),
    KeywordSpec("3D Generation", r"\b3d\b|\bthree[- ]dimensional\b|\bnovel view synthesis\b", "Multimodal & Generation"),
    KeywordSpec("Motion & Dynamics", r"\bmotion\b|\bdynamics\b|\btrajectory\b", "Multimodal & Generation"),
    KeywordSpec("Inference Efficiency", r"\binference\b|\bdecoding\b|\blatency\b|\bthroughput\b", "Systems & Architecture"),
    KeywordSpec("Architecture & Scaling", r"\bscaling\b|\barchitecture\b|\btransformer\b", "Systems & Architecture"),
    KeywordSpec("Training Systems", r"\bdistributed training\b|\bparallelism\b|\bpre[- ]?training\b|\btraining efficiency\b", "Systems & Architecture"),
    KeywordSpec("Post-training", r"\bpost[- ]?training\b|\bfine[- ]?tuning\b", "Systems & Architecture"),
    KeywordSpec("Mixture of Experts", r"\bmixture[- ]of[- ]experts\b|\bmoe\b", "Systems & Architecture"),
    KeywordSpec("Tokenization", r"\btokeni[sz](?:ation|er|ers|e|ed|ing)\b", "Systems & Architecture"),
    KeywordSpec("Robotics", r"\brobot(?:ic|ics|s)?\b|\bmanipulation\b", "Embodied & World"),
    KeywordSpec("Embodied AI", r"\bembodied\b|\bvision[- ]language[- ]action\b|\bvla\b", "Embodied & World"),
    KeywordSpec("World Models", r"\bworld models?\b|\benvironment models?\b", "Embodied & World"),
    KeywordSpec("Protein & Biomolecules", r"\bproteins?\b|\bbiomolecul(?:e|ar)\b|\bpeptide\b|\bamino acid\b", "Science & Trust"),
    KeywordSpec("Molecular Design", r"\bmolecul(?:e|ar)\b|\bdrug\b|\bchemical\b|\bchemistry\b", "Science & Trust"),
    KeywordSpec("AI for Science", r"\bscientific\b|\bphysics\b|\bquantum\b|\bmaterials?\b", "Science & Trust"),
    KeywordSpec("Safety & Robustness", r"\bsafety\b|\bsafe\b|\brobust(?:ness)?\b|\btrustworthy\b|\bharmful\b", "Science & Trust"),
    KeywordSpec("Synthetic Data", r"\bsynthetic data\b|\bdata synthesis\b", "Science & Trust"),
]


def font(size: int, bold: bool = False) -> ImageFont.FreeTypeFont:
    candidates = [
        Path("/System/Library/Fonts/Supplemental/Arial Unicode.ttf"),
        Path("/System/Library/Fonts/STHeiti Medium.ttc" if bold else "/System/Library/Fonts/STHeiti Light.ttc"),
        Path("/System/Library/Fonts/Supplemental/Arial Bold.ttf" if bold else "/System/Library/Fonts/Supplemental/Arial.ttf"),
        Path("/System/Library/Fonts/Supplemental/Helvetica.ttc"),
        Path("/usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf" if bold else "/usr/share/fonts/truetype/dejavu/DejaVuSans.ttf"),
    ]
    for candidate in candidates:
        if candidate.exists():
            return ImageFont.truetype(str(candidate), size)
    return ImageFont.load_default()


def rounded_rect(draw: ImageDraw.ImageDraw, box: tuple[int, int, int, int], radius: int, fill: str, outline: str | None = None, width: int = 1) -> None:
    draw.rounded_rectangle(box, radius=radius, fill=fill, outline=outline, width=width)


def keyword_results(abstracts: list[str]) -> list[KeywordResult]:
    results = []
    for spec in KEYWORDS:
        regex = re.compile(spec.pattern, re.IGNORECASE)
        per_document = [len(regex.findall(abstract)) for abstract in abstracts]
        document_count = sum(count > 0 for count in per_document)
        mention_count = sum(per_document)
        results.append(
            KeywordResult(
                keyword=spec.label,
                category=spec.category,
                document_count=document_count,
                document_share=round(document_count / len(abstracts), 4),
                mention_count=mention_count,
            )
        )
    return sorted(results, key=lambda item: (item.document_count, item.mention_count, item.keyword), reverse=True)


def fit_font(draw: ImageDraw.ImageDraw, text: str, max_width: int, start_size: int, minimum: int = 22, bold: bool = True) -> ImageFont.FreeTypeFont:
    size = start_size
    while size > minimum:
        candidate = font(size, bold=bold)
        if draw.textbbox((0, 0), text, font=candidate)[2] <= max_width:
            return candidate
        size -= 2
    return font(minimum, bold=bold)


def draw_cloud(draw: ImageDraw.ImageDraw, results: list[KeywordResult], box: tuple[int, int, int, int]) -> None:
    left, top, right, bottom = box
    max_count = max(item.document_count for item in results)
    x = left
    y = top
    row_height = 0
    palette = [
        (BLUE, BLUE_SOFT),
        (INDIGO, "#efedff"),
        (VIOLET, VIOLET_SOFT),
        ("#30323a", "#eff0f3"),
    ]

    for index, item in enumerate(results):
        normalized = item.document_count / max_count
        size = round(18 + normalized * 16)
        label_font = font(size, bold=True)
        label = item.keyword
        text_box = draw.textbbox((0, 0), label, font=label_font)
        pill_width = text_box[2] - text_box[0] + 36
        pill_height = text_box[3] - text_box[1] + 28
        if x + pill_width > right:
            x = left
            y += row_height + 18
            row_height = 0
        if y + pill_height > bottom:
            break
        ink, fill = palette[index % len(palette)]
        rounded_rect(draw, (x, y, x + pill_width, y + pill_height), 20, fill, outline=ink, width=2)
        draw.text((x + 18, y + 11), label, font=label_font, fill=ink)
        x += pill_width + 16
        row_height = max(row_height, pill_height)


def build_image(results: list[KeywordResult], paper_count: int) -> None:
    image = Image.new("RGB", (WIDTH, HEIGHT), BG)
    draw = ImageDraw.Draw(image)

    draw.text((88, 62), "SEED ABSTRACT KEYWORD MAP", font=font(19, bold=True), fill=BLUE)
    draw.text((88, 102), "主流研究关键词", font=font(64, bold=True), fill=INK)
    draw.text(
        (90, 184),
        f"按 {paper_count} 篇公开论文的 Abstract 跨论文覆盖率排序 · 统计截至 2026-07-30",
        font=font(23),
        fill=MUTED,
    )

    left_panel = (70, 250, 1160, 925)
    right_panel = (1190, 250, 1730, 925)
    rounded_rect(draw, left_panel, 34, SURFACE, outline=LINE, width=2)
    rounded_rect(draw, right_panel, 34, SURFACE, outline=LINE, width=2)

    draw.text((110, 286), "KEYWORD COLLECTION", font=font(17, bold=True), fill=MUTED)
    draw.text((110, 321), "字号随论文覆盖数变化", font=font(20), fill=INK)
    draw_cloud(draw, results[:26], (110, 382, 1122, 875))

    draw.text((1232, 286), "TOP DIRECTIONS", font=font(17, bold=True), fill=MUTED)
    draw.text((1232, 321), "覆盖论文数 / 占 212 篇比例", font=font(20), fill=INK)

    top_items = results[:10]
    max_count = top_items[0].document_count
    bar_left = 1232
    bar_right = 1684
    y = 376
    for rank, item in enumerate(top_items, start=1):
        label_font = fit_font(draw, item.keyword, 300, 17, minimum=14, bold=True)
        draw.text((bar_left, y), f"{rank:02d}", font=font(16, bold=True), fill=BLUE)
        draw.text((bar_left + 42, y - 1), item.keyword, font=label_font, fill=INK)
        metric = f"{item.document_count} · {item.document_share:.0%}"
        metric_box = draw.textbbox((0, 0), metric, font=font(15, bold=True))
        draw.text((bar_right - (metric_box[2] - metric_box[0]), y), metric, font=font(15, bold=True), fill=INK)
        y += 25
        rounded_rect(draw, (bar_left + 42, y, bar_right, y + 8), 4, "#e9eaf0")
        value_right = bar_left + 42 + round((bar_right - bar_left - 42) * item.document_count / max_count)
        rounded_rect(draw, (bar_left + 42, y, value_right, y + 8), 4, BLUE)
        y += 27

    draw.line((88, 975, 1712, 975), fill=LINE, width=2)
    draw.text((88, 1004), "口径", font=font(16, bold=True), fill=INK)
    note = "仅统计 Abstract；合并同义写法；按包含该术语的论文数计数。已过滤论文写作套话、团队名、链接与低信息量词。"
    note_font = fit_font(draw, note, 1500, 19, minimum=16, bold=False)
    draw.text((148, 1002), note, font=note_font, fill=MUTED)

    OUTPUT_IMAGE.parent.mkdir(parents=True, exist_ok=True)
    image.save(OUTPUT_IMAGE, format="PNG", optimize=True)


def main() -> None:
    payload = json.loads(PAPERS_PATH.read_text())
    abstracts = [paper["abstract"].strip() for paper in payload["papers"] if paper.get("abstract")]
    results = keyword_results(abstracts)
    visible_results = [item for item in results if item.document_count >= 4]

    output = {
        "source": "ByteDance Seed public paper abstracts",
        "generated_at": "2026-07-30",
        "paper_count": len(abstracts),
        "metric": "document_frequency",
        "methodology": (
            "Curated research vocabulary with synonym-normalizing regular expressions. "
            "Ranked by the number of distinct abstracts containing each term. "
            "Generic academic boilerplate, organization names, URLs, and low-information words are excluded."
        ),
        "excluded_examples": [
            "paper",
            "method",
            "results",
            "novel",
            "state-of-the-art",
            "model",
            "dataset",
        ],
        "keywords": [asdict(item) for item in visible_results],
    }
    OUTPUT_DATA.write_text(json.dumps(output, ensure_ascii=False, indent=2) + "\n")
    build_image(visible_results, len(abstracts))
    print(f"wrote {OUTPUT_DATA.relative_to(ROOT)} ({len(visible_results)} keywords)")
    print(f"wrote {OUTPUT_IMAGE.relative_to(ROOT)} ({WIDTH}x{HEIGHT})")
    for item in visible_results[:12]:
        print(f"{item.keyword:28} {item.document_count:3} documents ({item.document_share:.1%})")


if __name__ == "__main__":
    main()
