#!/usr/bin/env python3
"""Build a reproducible keyword map from the public Tencent Youtu abstracts."""

from __future__ import annotations

import json
import re
from dataclasses import asdict, dataclass
from pathlib import Path

from PIL import Image, ImageDraw, ImageFont


ROOT = Path(__file__).resolve().parents[1]
PAPERS_PATH = ROOT / "data" / "youtu-research.json"
OUTPUT_DATA = ROOT / "data" / "youtu-keywords.json"
OUTPUT_IMAGE = ROOT / "assets" / "youtu-keywords.png"

WIDTH = 1800
HEIGHT = 1080

INK = "#12201c"
MUTED = "#68756f"
LINE = "#dbe5e0"
SURFACE = "#ffffff"
BG = "#f3f7f5"
GREEN = "#087a5b"
GREEN_SOFT = "#e8f5ef"
TEAL = "#0a8d7a"
TEAL_SOFT = "#e5f5f3"
BLUE = "#23758a"
BLUE_SOFT = "#e9f3f6"


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


# A research-specific vocabulary for the current public Youtu working set.
# Generic abstract language such as "paper", "method", "results", "novel",
# "state-of-the-art", "model", and "dataset" is excluded by construction.
KEYWORDS = [
    KeywordSpec("Large Language Models", r"\b(?:large language models?|llms?)\b", "Agents & Language"),
    KeywordSpec("Agents", r"\bagent(?:ic|s)?\b|computer[- ]using agent", "Agents & Language"),
    KeywordSpec("Reasoning", r"\breason(?:ing|er|ers)\b", "Agents & Language"),
    KeywordSpec("Reinforcement Learning", r"\breinforcement learning\b|\brl\b|policy optimization", "Agents & Language"),
    KeywordSpec("Reward Modeling", r"\breward(?:s| models?| modeling)?\b", "Agents & Language"),
    KeywordSpec("Instruction Following", r"\binstruction[- ]following\b|\binstructions?\b", "Agents & Language"),
    KeywordSpec("Exploration", r"\bexplor(?:ation|e|ing)\b|intrinsic rewards?", "Agents & Language"),
    KeywordSpec("Software Engineering", r"\bsoftware engineering\b|\bcodebase\b|\brepositor(?:y|ies)[- ]level\b|\bprogram repair\b", "Agents & Language"),
    KeywordSpec("Multimodal Learning", r"\bmulti[- ]?modal\b|cross[- ]modal", "Multimodal & Interaction"),
    KeywordSpec("Vision–Language", r"\bvision[- ]language\b|visual[- ]language|\bclip\b", "Multimodal & Interaction"),
    KeywordSpec("Speech & Audio", r"\bspeech\b|\baudio\b|\bvoice\b|acoustic", "Multimodal & Interaction"),
    KeywordSpec("Video Understanding", r"\bvideo(?:s)?\b|temporal", "Multimodal & Interaction"),
    KeywordSpec("Real-time Interaction", r"\breal[- ]time\b|\bspeech[- ]to[- ]speech\b|\bomni[- ]?modal dialogue\b|\binteractive\b", "Multimodal & Interaction"),
    KeywordSpec("Benchmarks & Evaluation", r"\bbenchmarks?\b|\bbenchmarking\b|\bevaluation benchmark\b|\bevaluation framework\b", "Evaluation & Trust"),
    KeywordSpec("Robustness & Debiasing", r"\brobust(?:ness)?\b|\bde[- ]?bias(?:ing|ed)?\b|\bbias(?:es|ed)?\b|counterfactual", "Evaluation & Trust"),
    KeywordSpec("Factuality", r"\bfactual(?:ity)?\b|\bhallucin(?:ation|atory|ate)\b|\btruthful(?:ness)?\b", "Evaluation & Trust"),
    KeywordSpec("Image Quality Assessment", r"\bimage quality\b|\biqa\b|quality[- ]aware", "Vision & Generation"),
    KeywordSpec("Object Detection", r"\bobject detection\b|\bobject localization\b|region proposal", "Vision & Generation"),
    KeywordSpec("Open-vocabulary Vision", r"\bopen[- ]vocabulary\b|\bopen[- ]set\b|novel categor(?:y|ies)", "Vision & Generation"),
    KeywordSpec("Segmentation & Grounding", r"\bsegment(?:ation|ing)\b|\bgrounding\b", "Vision & Generation"),
    KeywordSpec("Diffusion Models", r"\bdiffusion(?: probabilistic)? models?\b|\bddpm\b|\bdenoising diffusion\b", "Vision & Generation"),
    KeywordSpec("Image Generation", r"\bimage generation\b|\bpixel generation\b|\bimage synthesis\b|generative vision", "Vision & Generation"),
    KeywordSpec("Efficient Training", r"\btraining (?:efficiency|acceleration|cost)\b|\befficient training\b|\btraining acceleration\b", "Learning & Systems"),
    KeywordSpec("Inference & Decoding", r"\binference\b|\bdecoding\b|\blatency\b|\bparallelism\b", "Learning & Systems"),
    KeywordSpec("Compression & Distillation", r"\bcompress(?:ion|ed)?\b|\bdistill(?:ation|ed|ing)\b|\bknowledge distillation\b", "Learning & Systems"),
    KeywordSpec("Semi-supervised Learning", r"\bsemi[- ]supervised\b|\bweakly supervised\b|\bunlabeled\b", "Learning & Systems"),
    KeywordSpec("Incremental Learning", r"\bincremental learning\b|\bcatastrophic forgetting\b|\bforgetting\b", "Learning & Systems"),
    KeywordSpec("Adaptation & Fine-tuning", r"\badapt(?:ation|ive|ivity)\b|\bfine[- ]?tuning\b|\bdomain adaptation\b", "Learning & Systems"),
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


def rounded_rect(
    draw: ImageDraw.ImageDraw,
    box: tuple[int, int, int, int],
    radius: int,
    fill: str,
    outline: str | None = None,
    width: int = 1,
) -> None:
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


def fit_font(
    draw: ImageDraw.ImageDraw,
    text: str,
    max_width: int,
    start_size: int,
    minimum: int = 22,
    bold: bool = True,
) -> ImageFont.FreeTypeFont:
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
        (GREEN, GREEN_SOFT),
        (TEAL, TEAL_SOFT),
        (BLUE, BLUE_SOFT),
        ("#30463e", "#edf2ef"),
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

    draw.text((88, 62), "TENCENT YOUTU ABSTRACT KEYWORD MAP", font=font(19, bold=True), fill=GREEN)
    draw.text((88, 102), "主流研究关键词", font=font(64, bold=True), fill=INK)
    draw.text(
        (90, 184),
        f"按 {paper_count} 篇可获取 Abstract 的公开论文跨论文覆盖率排序 · 统计截至 2026-07-31",
        font=font(23),
        fill=MUTED,
    )

    left_panel = (70, 250, 1160, 925)
    right_panel = (1190, 250, 1730, 925)
    rounded_rect(draw, left_panel, 34, SURFACE, outline=LINE, width=2)
    rounded_rect(draw, right_panel, 34, SURFACE, outline=LINE, width=2)

    draw.text((110, 286), "KEYWORD COLLECTION", font=font(17, bold=True), fill=MUTED)
    draw.text((110, 321), "字号随论文覆盖数变化", font=font(20), fill=INK)
    draw_cloud(draw, results[:24], (110, 382, 1122, 875))

    draw.text((1232, 286), "TOP DIRECTIONS", font=font(17, bold=True), fill=MUTED)
    draw.text((1232, 321), f"覆盖论文数 / 占 {paper_count} 篇比例", font=font(20), fill=INK)

    top_items = results[:10]
    max_count = top_items[0].document_count
    bar_left = 1232
    bar_right = 1684
    y = 376
    for rank, item in enumerate(top_items, start=1):
        label_font = fit_font(draw, item.keyword, 300, 17, minimum=14, bold=True)
        draw.text((bar_left, y), f"{rank:02d}", font=font(16, bold=True), fill=GREEN)
        draw.text((bar_left + 42, y - 1), item.keyword, font=label_font, fill=INK)
        metric = f"{item.document_count} · {item.document_share:.0%}"
        metric_box = draw.textbbox((0, 0), metric, font=font(15, bold=True))
        draw.text((bar_right - (metric_box[2] - metric_box[0]), y), metric, font=font(15, bold=True), fill=INK)
        y += 25
        rounded_rect(draw, (bar_left + 42, y, bar_right, y + 8), 4, "#e5ece8")
        value_right = bar_left + 42 + round((bar_right - bar_left - 42) * item.document_count / max_count)
        rounded_rect(draw, (bar_left + 42, y, value_right, y + 8), 4, GREEN)
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
    visible_results = [item for item in results if item.document_count >= 2]

    output = {
        "source": "Tencent Youtu public paper abstracts",
        "generated_at": "2026-07-31",
        "paper_count": len(abstracts),
        "working_set_count": payload["counts"]["papers"],
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
