<div align="center">

# Awesome Team

**中美顶尖 AI 公司与高校科研团队的可核验目录**

团队 Logo、研究方向、所属机构、三位代表性负责人 / 教师，以及可折叠的代表作、摘要、引用量与原文图表。

[![Teams](https://img.shields.io/badge/teams-153-2563eb?style=flat-square)](https://goya4140.github.io/awesome-team/)
[![Institutions](https://img.shields.io/badge/institutions-49-2563eb?style=flat-square)](docs/SEED_LIST.md)
[![Verified](https://img.shields.io/badge/verified-132-2563eb?style=flat-square)](docs/TEAM_COLLECTION_METHOD.md)
[![Resolved papers](https://img.shields.io/badge/resolved_papers-176-2563eb?style=flat-square)](docs/RESEARCH_TEAMS.md)
[![Method figures](https://img.shields.io/badge/method_figures-125-2563eb?style=flat-square)](docs/RESEARCH_TEAMS.md)

[**Explore the visual directory →**](https://goya4140.github.io/awesome-team/) ·
[Full catalog](docs/RESEARCH_TEAMS.md) ·
[Methodology](docs/TEAM_COLLECTION_METHOD.md) ·
[Contribute](CONTRIBUTING.md)

</div>

---

## 为什么是团队目录？

论文列表只能告诉你“发生过什么”，团队索引更适合回答“谁还在持续创造”。Awesome Team 不按机构光环排名，也不把一次顶会录用当成永久通行证；每个条目都需要官方归属与近期公开研究活动作为证据。

当前版本覆盖：

| 范围 | 母体机构 | 团队 | 说明 |
|---|---:|---:|---|
| 科技公司 | 17 | 44 | 中国 P0/P1 白名单与美国 P0 白名单 |
| 前沿 AI 公司 / 研究机构 | 9 | 20 | OpenAI、Anthropic、中国前沿模型公司、上海 AI Lab 与中科院 / 自动化所 |
| 顶尖高校 | 23 | 89 | C9、HKUST(GZ)、港三、新二、美国 AI 核心高校 |
| **合计** | **49** | **153** | **132 verified / 21 provisional** |

地区分布：**中国大陆 75**、**美国 58**、**中国香港 11**、**新加坡 9**。

## 每个团队展示什么？

- **身份信息：** 团队 Logo；没有独立 Logo 时使用 GitHub 头像或母组织官网图标。
- **团队画像：** 简介、所属机构、研究方向、核验状态。
- **负责人 / 教师：** 每队三位。正式职务只在官方来源明确支持时使用；其余明确标注为核心教师、关联教师、重要合作者或企业资深研究员，不把影响力入选误写成组织管理关系。
- **最近工作：** 每队单列一项，优先选择最新论文；无已匹配论文时，再按 GitHub 最近推送日期择新。
- **代表成果：** 每队三项，可折叠查看基于 Abstract 的 TL;DR、Google Scholar 引用入口、GitHub Stars 和原文方法图。
- **双视图：** [GitHub Markdown 完整目录](docs/RESEARCH_TEAMS.md) 与 [白蓝简约网页](https://goya4140.github.io/awesome-team/)。

> `research_index` 表示已核验的官方研究入口，但尚未细化为单篇作品。它不是论文，欢迎通过 PR 补充更精确的论文或项目链接。

> 引用入口使用 Google Scholar。由于 Google Scholar 没有官方公开结构化 API，未经逐篇核验的数字不会被缓存或伪造；OpenAlex 仅用于论文身份、书目信息与 Abstract。GitHub Stars 与学术引用分开展示。

## Data

| 文件 | 用途 |
|---|---|
| [`data/seed-parents.yaml`](data/seed-parents.yaml) | 49 个母体机构白名单 |
| [`data/research-teams.yaml`](data/research-teams.yaml) | 153 个团队的主数据与证据 |
| [`data/team-profiles.yaml`](data/team-profiles.yaml) | Logo、中文简介、方向与公开负责人 |
| [`data/team-leaders.yaml`](data/team-leaders.yaml) | 每队三位负责人 / 教师、人物链接、角色证据与入选依据 |
| [`data/representative-works.yaml`](data/representative-works.yaml) | 每队三项精选条目 |
| [`data/work-metadata.yaml`](data/work-metadata.yaml) | 论文匹配、Abstract、Scholar 入口与原文方法图 |
| [`data/abstract-summaries-zh.yaml`](data/abstract-summaries-zh.yaml) | 基于 Abstract 的中文 TL;DR 缓存 |
| [`data/recent-works.yaml`](data/recent-works.yaml) | 每个团队的最近工作及择新依据 |
| [`site/data/catalog.json`](site/data/catalog.json) | 由 YAML 生成的网页数据 |

## Maintain

```bash
ruby scripts/build_team_profiles.rb > data/team-profiles.yaml
ruby scripts/audit_team_leaders.rb
ruby scripts/extract_repo_paper_ids.rb
ruby scripts/resolve_crossref_metadata.rb
ruby scripts/build_work_metadata.rb
ruby scripts/summarize_abstracts_zh.rb
ruby scripts/build_work_metadata.rb
ruby scripts/build_recent_works.rb
ruby scripts/render_research_teams.rb
ruby scripts/validate_catalog.rb
ruby scripts/build_site_data.rb > site/data/catalog.json
node --check site/assets/app.js
```

这些元数据命令会访问 GitHub、Crossref、OpenAlex 与 arXiv/ar5iv；中文摘要由本地 Ollama 模型生成，Scholar 仅提供逐篇检索入口。

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
