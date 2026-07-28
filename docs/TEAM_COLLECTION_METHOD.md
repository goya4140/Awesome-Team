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

## 完成标准

1. 46 个母体机构全部经过检索；
2. 每个有正式收录团队的母体至少有一条归属证据和近期活跃证据；
3. 没有找到合格团队的母体也要记录检索结论，而不是静默遗漏；
4. 所有 GitHub / 官方主页链接通过可访问性检查；
5. 可读文档与 YAML 主数据一致。
