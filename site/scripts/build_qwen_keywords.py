#!/usr/bin/env python3
"""Render the reproducible Qwen abstract keyword summary."""

from __future__ import annotations

import json
from pathlib import Path

from PIL import Image, ImageDraw, ImageFont


ROOT = Path(__file__).resolve().parents[1]
DATA = ROOT / "data" / "qwen-keywords.json"
OUTPUT = ROOT / "assets" / "qwen-keywords.png"
WIDTH, HEIGHT = 1800, 1080


def font(size: int, bold: bool = False) -> ImageFont.FreeTypeFont:
    candidates = [
        Path("/System/Library/Fonts/STHeiti Medium.ttc" if bold else "/System/Library/Fonts/STHeiti Light.ttc"),
        Path("/System/Library/Fonts/Supplemental/Arial Bold.ttf" if bold else "/System/Library/Fonts/Supplemental/Arial.ttf"),
        Path("/usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf" if bold else "/usr/share/fonts/truetype/dejavu/DejaVuSans.ttf"),
    ]
    for candidate in candidates:
        if candidate.exists():
            return ImageFont.truetype(str(candidate), size)
    return ImageFont.load_default()


def main() -> None:
    payload = json.loads(DATA.read_text())
    keywords = payload["keywords"]
    image = Image.new("RGB", (WIDTH, HEIGHT), "#000000")
    draw = ImageDraw.Draw(image)

    draw.text((92, 70), "QWEN TEAM · ABSTRACT KEYWORDS", font=font(22, True), fill="#9aaaff")
    draw.text((92, 122), "摘要中的研究重心", font=font(68, True), fill="#f7f8fc")
    draw.text(
        (94, 214),
        f"按 {payload['paper_count']} 篇可获取 Abstract 的跨论文覆盖率排序 · 核验于 {payload['generated_at']}",
        font=font(23),
        fill="#999aa3",
    )

    draw.rounded_rectangle((72, 290, 1728, 938), radius=44, fill="#0d0d0f", outline="#2e2e36", width=2)
    max_count = max(item["document_count"] for item in keywords)
    y = 350
    for index, item in enumerate(keywords, start=1):
        count = item["document_count"]
        share = item["document_share"]
        draw.text((120, y), f"{index:02d}", font=font(19, True), fill="#6778e8")
        draw.text((190, y - 7), item["keyword"], font=font(34, True), fill="#f7f8fc")
        metric = f"{count} 篇 · {share:.0%}"
        metric_width = draw.textbbox((0, 0), metric, font=font(20, True))[2]
        draw.text((1665 - metric_width, y + 2), metric, font=font(20, True), fill="#c9b9ff")
        top = y + 48
        draw.rounded_rectangle((190, top, 1665, top + 12), radius=6, fill="#202024")
        bar_right = 190 + round((1665 - 190) * count / max_count)
        draw.rounded_rectangle((190, top, bar_right, top + 12), radius=6, fill="#5268ff")
        y += 92

    draw.line((92, 987, 1708, 987), fill="#29292f", width=2)
    draw.text((92, 1015), "口径：只统计可获取 Abstract 的论文；合并同义表达；按包含该主题的论文数计数。", font=font(19), fill="#999aa3")
    OUTPUT.parent.mkdir(parents=True, exist_ok=True)
    image.save(OUTPUT, "PNG", optimize=True)
    print(f"wrote {OUTPUT.relative_to(ROOT)} ({WIDTH}x{HEIGHT})")


if __name__ == "__main__":
    main()
