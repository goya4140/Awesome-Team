#!/usr/bin/env python3
"""Print a read-only Qwen public-evidence snapshot.

The command never overwrites the curated research dataset. It separates
repository push timestamps from publication dates so maintainers can review
changes before updating the page.
"""

from __future__ import annotations

import json
from datetime import datetime, timedelta, timezone
from urllib.request import Request, urlopen


HEADERS = {
    "Accept": "application/vnd.github+json",
    "User-Agent": "awesome-team-qwen-sync",
}


def get_json(url: str) -> dict | list:
    request = Request(url, headers=HEADERS)
    with urlopen(request, timeout=30) as response:
        return json.load(response)


def main() -> None:
    checked_at = datetime.now(timezone.utc)
    organization = get_json("https://api.github.com/orgs/QwenLM")
    repositories = get_json("https://api.github.com/orgs/QwenLM/repos?per_page=100&type=public")
    research = get_json("https://qwen.ai/api/v2/article/retrieval?type=qwen_ai&language=en-US")
    articles = research.get("data", {}).get("articles", [])
    active_cutoff = checked_at - timedelta(days=90)

    latest = max(
        (
            {"name": repo["name"], "pushed_at": repo["pushed_at"]}
            for repo in repositories
            if repo.get("pushed_at")
        ),
        key=lambda item: item["pushed_at"],
        default=None,
    )

    snapshot = {
        "checked_at": checked_at.isoformat(),
        "organization": {
            "name": organization.get("name"),
            "description": organization.get("description"),
            "public_repositories": organization.get("public_repos"),
            "url": organization.get("html_url"),
        },
        "repository_signals": {
            "fetched": len(repositories),
            "non_archived": sum(not repo.get("archived", False) for repo in repositories),
            "active_last_90_days": sum(
                datetime.fromisoformat(repo["pushed_at"].replace("Z", "+00:00")) >= active_cutoff
                for repo in repositories
                if repo.get("pushed_at")
            ),
            "latest_push": latest,
        },
        "official_research_entries": {
            "count": len(articles),
            "entries": [
                {
                    "path": article.get("path"),
                    "title": article.get("title"),
                    "date": article.get("extra", {}).get("date"),
                    "tags": article.get("extra", {}).get("tags", []),
                    "author": article.get("extra", {}).get("author"),
                }
                for article in articles
            ],
        },
    }
    print(json.dumps(snapshot, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
