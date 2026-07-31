# AI 研究团队采集方法

更新日期：2026-07-28

## 目标

在 `data/seed-parents.yaml` 的母体白名单内，收集持续开展 AI 研究的实验室、研究组、模型团队和研究型开源组织，并给出可访问的 GitHub 首页或官方组织首页。

## 时间窗口

主要活跃度窗口为最近 24 个月，即 2024-07-28 至 2026-07-28。更早的成果只用于说明团队历史，不足以单独证明当前活跃。

## 正式收录条件

团队必须满足：

1. **归属明确**：母体机构官网、团队官网、官方论文页或官方代码仓库能够证明归属；
2. **研究相关**：主要方向属于 AI、ML、NLP、CV、语音、多模态、机器人、具身智能、AI 系统、评测、安全或对齐；
3. **近期持续活跃**：最近 24 个月满足下列任一强信号：
   - 至少 3 篇可核验的 arXiv / AI 顶会论文；
   - 官方论文目录在窗口内持续更新，且包含多篇研究论文；
   - 发布至少 1 个有公开技术报告的主要模型、数据集或评测，同时还有其他论文或开源产出；
4. **可访问入口**：至少有 GitHub Organization、GitHub 仓库集合页、官方团队主页或官方研究主页之一。

## 证据等级

- `verified`：归属证据和近期持续活跃证据均来自官方来源，代码/组织链接已验证可访问。
- `provisional`：归属明确，但论文数量、团队边界或代码账号仍需进一步核验。
- `excluded`：仅有个人账号、一次性项目、纯产品营销页，或最近 24 个月缺少足够研究产出。

## 边界处理

- 母体与团队分层：Alphabet 不是 Google DeepMind；Tsinghua University 不是 THUNLP。
- 一个 GitHub Organization 可以服务多个团队，但每条记录必须说明这种关系。
- 一个团队可以有多个 affiliation；主表以当前白名单内的主要母体为 `parent_id`，其他归属写入备注。
- 学院、研究中心过于宽泛时，优先继续拆到有稳定名称和研究产出的实验室或课题组。
- 仅凭 GitHub 名称、README 自述或论文作者邮箱，不足以证明官方归属，需要交叉证据。

### 官网停止更新时的持续性核验

团队旧官网停止更新、迁移或只保留产品入口时，不直接把团队判定为停止研究。可改用下列公开证据恢复当前研究网络：

1. 具有稳定团队名称的维护中 GitHub Organization、官方研究仓库或模型集合；
2. 现任负责人 / 资深研究者个人主页明确写出的团队任职，并持续列出窗口内论文或项目；
3. 窗口内论文首页、作者单位或通信邮箱明确出现团队名、母体机构名或可对应的团队标签；
4. 同一研究方向下多个仓库、论文与负责人页面能够相互指向，而非只有一次性项目。

升级为 `verified` 至少需要“当前任职归属”和“近期研究活动”两类证据，并优先要求两个相互独立的公开来源。负责人主页列出的个人合作成果可进入团队级公开工作集，但必须标记为“负责人论文索引”；只有团队仓库或论文明确署名的成果才能标记为“官方团队发布”。页面不得把公开工作集描述成完整内部员工或论文名录。

需要为团队制作独立介绍页时，按 [研究团队介绍网页构建框架](TEAM_INTRODUCTION_PAGE_FRAMEWORK.md) 组织页面模块、检索公开论文、执行逐篇归属核验，并完成发布前检查。官网停滞或缺少论文目录是该框架重点处理的数据缺口，但不是文档的唯一适用场景。

## 数据字段

```yaml
- id: google-deepmind
  name: Google DeepMind
  parent_id: alphabet
  team_type: corporate_research_lab
  focus: [foundation-models, reinforcement-learning, multimodal]
  homepages:
    - { kind: official, url: "https://deepmind.google/" }
    - { kind: github, url: "https://github.com/google-deepmind" }
  evidence:
    affiliation:
      - "https://deepmind.google/about/"
    recent_activity:
      - "https://deepmind.google/research/"
  activity_window: "2024-07-28/2026-07-28"
  status: verified
  last_verified: 2026-07-28
```

## 团队画像

- Logo 优先使用团队 GitHub Organization 头像；没有独立 GitHub 头像时，使用团队官网或母组织官网图标，并保留来源链接。
- 中文简介由团队归属、类型和主数据中的研究方向生成，不额外推断未公开的信息。
- 每个团队收录三位代表性研究负责人或最具影响力的教师 / 研究者。正式职务只在官方团队页、学校个人页或可核验个人主页明确支持时使用。
- 单 PI 实验室的其余名额可收录同一研究网络中的核心教师或重要学术合作者，但必须明确标为“关联教师 / 合作者”，不得写成共同主任。企业团队对应收录研究负责人、首席科学家或资深研究员。
- 人物入口优先使用个人主页；缺少稳定个人页时使用 Google Scholar 作者检索，并在界面中明确标注。每条记录保留团队归属证据与编辑入选依据。

## 代表成果与引用量

1. 每个团队保留三项论文、研究型开源成果或官方研究入口；`research_index` 不视为单篇论文。
2. 对 GitHub 代表作，先从仓库 README 抽取 arXiv / DOI 标识；直接的 arXiv / DOI 条目从目录 URL 解析；再使用严格标题匹配的 Crossref DOI 作为补充候选。
3. 引用数字来自 Semantic Scholar Academic Graph API。同步时优先使用 arXiv ID，其次使用 DOI；返回记录还必须通过论文标题相似度阈值，未通过时不得展示数字。
4. 每条 Semantic Scholar 数字同时记录论文 ID、普通引用量、高影响引用量、核验日期与带 `utm_source=api` 的来源页；公开页面保留 Semantic Scholar 名称与标识。
5. Google Scholar 继续作为精确标题检索入口。Semantic Scholar 与 Google Scholar 的索引覆盖不同，数字不得互相替代或改标。
6. OpenAlex 仅用于论文身份、书目信息和 Abstract；不得把 OpenAlex 引用数字标成 Semantic Scholar 或 Google Scholar。
7. TL;DR 必须基于论文 Abstract，优先提炼研究问题、方法和实验结论；没有 Abstract 时明确说明。
8. GitHub Stars 衡量代码采用度，与论文引用量分开展示。
9. 原文图表仅从已匹配论文的 arXiv 原文中抽取，通过 ar5iv 渲染；按 caption 优先选择 pipeline、architecture、framework 和 method overview。
10. “最近工作”从每队三项代表成果中，综合论文年份与 GitHub `pushed_at` 择新，它衡量新近程度而非重要性。
11. 无法可靠匹配的成果保持 `unresolved`，仍展示公开项目说明，但不伪造论文、引用量或图表。

## 完成标准

1. 49 个母体机构全部经过检索；
2. 每个有正式收录团队的母体至少有一条归属证据和近期活跃证据；
3. 没有找到合格团队的母体也要记录检索结论，而不是静默遗漏；
4. 所有 GitHub / 官方主页链接通过可访问性检查；
5. 所有团队都有 Logo、简介、方向，以及三位带人物入口和入选依据的代表性负责人 / 教师；
6. 所有代表成果都有摘要或项目说明，已解析论文带有引用量来源与日期；
7. 可读文档与 YAML 主数据一致。
