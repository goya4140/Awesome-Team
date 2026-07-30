# 维护与数据说明

这份文档面向 Awesome Team 的维护者。项目首页专注于解释仓库的价值、覆盖范围与参与方式；数据文件和维护命令集中记录在这里。

## 数据文件

| 文件 | 用途 |
|---|---|
| `data/seed-parents.yaml` | 母体机构白名单 |
| `data/research-teams.yaml` | 团队主数据与证据 |
| `data/team-profiles.yaml` | Logo、中文简介、方向与公开负责人 |
| `data/team-leaders.yaml` | 负责人 / 教师、人物链接、角色证据与入选依据 |
| `data/representative-works.yaml` | 每个团队的精选代表成果 |
| `data/work-metadata.yaml` | 论文匹配、Abstract、Scholar 入口与原文方法图 |
| `data/semantic-scholar-citations.yaml` | Semantic Scholar 引用量、匹配标识符与核验时间 |
| `data/abstract-summaries-zh.yaml` | 基于 Abstract 的中文 TL;DR 缓存 |
| `data/recent-works.yaml` | 每个团队的最近工作及择新依据 |
| `site/data/catalog.json` | 由 YAML 生成的网页数据 |

## 更新目录

```bash
ruby scripts/build_team_profiles.rb > data/team-profiles.yaml
ruby scripts/audit_team_leaders.rb
ruby scripts/extract_repo_paper_ids.rb
ruby scripts/resolve_crossref_metadata.rb
ruby scripts/build_work_metadata.rb
ruby scripts/summarize_abstracts_zh.rb
ruby scripts/build_work_metadata.rb
ruby scripts/sync_semantic_scholar_citations.rb
ruby scripts/build_recent_works.rb
ruby scripts/render_research_teams.rb
ruby scripts/validate_catalog.rb
ruby scripts/build_site_data.rb > site/data/catalog.json
node --check site/assets/app.js
```

这些命令会访问 GitHub、Crossref、OpenAlex、Semantic Scholar 与 arXiv / ar5iv；中文摘要由本地 Ollama 模型生成。建议为定期引用量同步设置 `SEMANTIC_SCHOLAR_API_KEY`，匿名请求可能受到共享限流。

详细筛选标准见 [团队收录方法](TEAM_COLLECTION_METHOD.md)。新增或修订条目前，请阅读 [贡献指南](../CONTRIBUTING.md)。

## 数据使用说明

引用数字来自 Semantic Scholar Academic Graph API，并通过 arXiv / DOI 稳定标识符匹配；Google Scholar 作为逐篇检索入口。两个索引的覆盖范围不同，引用数字不应混用。OpenAlex 用于论文身份、书目信息与 Abstract，GitHub Stars 与学术引用分开展示。

公开展示遵循 [Semantic Scholar API License](https://api.semanticscholar.org/license/)：数据链接带 `utm_source=api`，网页保留 Semantic Scholar 名称与标识。
