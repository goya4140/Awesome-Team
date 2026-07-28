# Contributing to Awesome Team

感谢你帮助维护这份开放目录。我们优先接受可核验的小型改动：新增团队、修复链接、更新状态，或把 `research_index` 替换为具体论文/项目。

## 收录条件

提交团队时需同时满足：

1. 母体机构已存在于 `data/seed-parents.yaml`。
2. 团队具有可核验的官方归属。
3. 团队在当前滚动活动窗口内存在论文、模型、数据集或研究型开源成果。
4. 链接指向团队官网、官方 GitHub、论文页或项目页，而非二手转载。

完整标准见 [`docs/TEAM_COLLECTION_METHOD.md`](docs/TEAM_COLLECTION_METHOD.md)。

## 推荐提交内容

- 团队中英文名称与 `parent_id`
- 官方主页和 GitHub Organization（如有）
- 3–6 个研究方向标签
- 至少一个归属证据和一个近期活动证据
- 三项代表论文或研究成果
- 建议状态：`verified` 或 `provisional`

## 修改流程

1. 修改 `data/research-teams.yaml` 或 `data/representative-works.yaml`。
2. 重新生成网页数据：

   ```bash
   ruby scripts/build_site_data.rb > site/data/catalog.json
   ```

3. 运行检查：

   ```bash
   ruby scripts/validate_catalog.rb
   node --check site/assets/app.js
   ```

4. 在 Pull Request 中简要解释证据与改动范围。

请不要提交未经核验的排行榜、营销新闻或只与母体机构有关、无法归属到具体团队的作品。
