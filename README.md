<div align="center">

# Awesome Team

**An evidence-first map of AI research teams that keep building.**

持续追踪中美顶尖 AI 公司与高校中，公开产出论文、模型、数据集与系统的研究团队。

[![Teams](https://img.shields.io/badge/teams-143-171814?style=flat-square)](https://goya4140.github.io/awesome-team/)
[![Parents](https://img.shields.io/badge/institutions-46-5f77ff?style=flat-square)](docs/SEED_LIST.md)
[![Verified](https://img.shields.io/badge/verified-123-55af71?style=flat-square)](docs/TEAM_COLLECTION_METHOD.md)
[![Featured works](https://img.shields.io/badge/featured_entries-429-ff6846?style=flat-square)](data/representative-works.yaml)
[![License: MIT](https://img.shields.io/badge/license-MIT-c9ff48?style=flat-square)](LICENSE)

[**Explore the visual directory →**](https://goya4140.github.io/awesome-team/) ·
[Full catalog](docs/RESEARCH_TEAMS.md) ·
[Methodology](docs/TEAM_COLLECTION_METHOD.md) ·
[Contribute](CONTRIBUTING.md)

</div>

---

## Why Awesome Team?

论文列表只能告诉你“发生过什么”，团队索引更适合回答“谁还在持续创造”。Awesome Team 不按机构光环排名，也不把一次顶会录用当成永久通行证；每个条目都需要官方归属与近期公开研究活动作为证据。

当前版本覆盖：

| 范围 | 母体机构 | 团队 | 说明 |
|---|---:|---:|---|
| 科技公司 | 17 | 44 | 中国 P0/P1 白名单与美国 P0 白名单 |
| 前沿 AI 公司 | 6 | 10 | OpenAI、Anthropic 与中国前沿模型公司 |
| 顶尖高校 | 23 | 89 | C9、HKUST(GZ)、港三、新二、美国 AI 核心高校 |
| **合计** | **46** | **143** | **123 verified / 20 provisional** |

地区分布：**中国大陆 65**、**美国 58**、**中国香港 11**、**新加坡 9**。

## What you can explore

- 团队官方主页与 GitHub Organization
- 母体机构、地区、团队类型和研究方向
- 归属证据与滚动两年内的研究活动证据
- 每队三项代表论文、开源成果或官方研究入口
- 可搜索、可组合筛选的 [GitHub Pages 可视化目录](https://goya4140.github.io/awesome-team/)

> `research_index` 表示已核验的官方研究入口，但尚未细化为单篇作品。它不是论文，欢迎通过 PR 补充更精确的论文或项目链接。

## Data

| 文件 | 用途 |
|---|---|
| [`data/seed-parents.yaml`](data/seed-parents.yaml) | 46 个母体机构白名单 |
| [`data/research-teams.yaml`](data/research-teams.yaml) | 143 个团队的主数据与证据 |
| [`data/representative-works.yaml`](data/representative-works.yaml) | 每队三项精选条目 |
| [`site/data/catalog.json`](site/data/catalog.json) | 由 YAML 生成的网页数据 |

## Maintain

```bash
ruby scripts/validate_catalog.rb
ruby scripts/build_site_data.rb > site/data/catalog.json
node --check site/assets/app.js
```

详细筛选标准见 [`docs/TEAM_COLLECTION_METHOD.md`](docs/TEAM_COLLECTION_METHOD.md)。新增或修订条目前，请阅读 [`CONTRIBUTING.md`](CONTRIBUTING.md)。

## Principles

1. 机构声望不是充分条件，持续公开研究活动才是。
2. 母体机构与下属团队分开建模。
3. GitHub 账号只是证据之一，同名账号不会自动认定为官方。
4. `verified` 与 `provisional` 明确区分，不隐藏证据缺口。
5. 所有核心数据保持机器可读，并允许社区审计。

---

<div align="center">
Built for researchers who follow teams, not just leaderboards.
</div>
