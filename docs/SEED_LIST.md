# 母体机构白名单

更新日期：2026-07-30

## 1. 当前范围

本仓库目前只收录：

- 中国和美国的主要 AI 科技公司、基础模型公司，以及上海人工智能实验室、中国科学院与中国科学院自动化研究所；
- 中国 C9 高校；
- 香港科技大学（广州）；
- “港三”：香港大学、香港中文大学、香港科技大学；
- “新二”：新加坡国立大学、南洋理工大学；
- 美国 AI 核心高校。

除用户明确补充的上海人工智能实验室、中国科学院与中国科学院自动化研究所外，暂不收录其他国家和地区的公司、其他高校、独立研究院、政府实验室及跨校联盟。范围外机构可以保留在 issue 或未来候选表中，但不进入当前主数据。

## 2. 实体层级

本阶段只确定母体机构，下一阶段再收集其下属团队：

```text
母体机构
└── 研究团队 / 实验室 / 模型团队
    ├── GitHub Organization
    ├── 官方主页
    ├── Hugging Face
    └── 论文、模型、数据集与评测
```

例如：

- Alphabet → Google Research、Google DeepMind；
- ByteDance → Seed 及 Seed 下属研究方向；
- The University of Hong Kong → HKU NLP 等实验室；
- Carnegie Mellon University → 具体学院、实验室和课题组。

## 3. 中国 AI 公司

### P0：第一批采集

| 类型 | 母体机构 |
|---|---|
| 综合科技公司 | ByteDance、Alibaba、Tencent、Huawei、Baidu、Kuaishou、Meituan、JD.com、Ant Group、Xiaomi |
| 基础模型 / AI 公司 | DeepSeek、Zhipu AI、Moonshot AI、MiniMax |
| 独立研究机构 | Shanghai Artificial Intelligence Laboratory（上海人工智能实验室）、Chinese Academy of Sciences（中国科学院）、Institute of Automation, Chinese Academy of Sciences（中国科学院自动化研究所） |

### P1：第二批补充

| 类型 | 母体机构 |
|---|---|
| 综合科技公司 | Xiaohongshu |

## 4. 美国 AI 公司

### P0：正式白名单

| 类型 | 母体机构 |
|---|---|
| 综合科技公司 | Alphabet（Google）、Meta、Microsoft、NVIDIA、Amazon、Apple |
| 基础模型 / AI 公司 | OpenAI、Anthropic |

美国公司不设 P1 候选，本阶段不采集白名单之外的美国公司。

`P0/P1` 只表示后续采集顺序，不代表公司实力排名。

## 5. 高校白名单

### 中国 C9

1. Tsinghua University
2. Peking University
3. Zhejiang University
4. Shanghai Jiao Tong University
5. Fudan University
6. University of Science and Technology of China
7. Nanjing University
8. Harbin Institute of Technology
9. Xi'an Jiaotong University

### 香港科技大学（广州）

1. The Hong Kong University of Science and Technology (Guangzhou)

香港科技大学（广州）作为独立的团队发现入口处理，不自动与香港科技大学本部的实验室合并。

### 港三

1. The University of Hong Kong
2. The Chinese University of Hong Kong
3. The Hong Kong University of Science and Technology

### 新二

1. National University of Singapore
2. Nanyang Technological University

### 美国 AI 核心高校

1. Carnegie Mellon University
2. Massachusetts Institute of Technology
3. Stanford University
4. University of California, Berkeley
5. University of Maryland, College Park
6. University of California, San Diego
7. University of Washington
8. University of Illinois Urbana-Champaign

这里不再使用 Ivy League 身份作为筛选条件。以上 8 所是当前 AIRankings 全球前 20 中出现的全部美国高校，兼顾核心 AI 论文产出和计算机视觉、自然语言处理、机器学习、机器人等方向的覆盖。该分组用于确定采集范围，不表示精确名次。

参考入口：

- AIRankings: https://airankings.org/
- CSRankings AI: https://csrankings.org/

## 6. 团队收录门槛

下一阶段发现的研究团队满足以下条件中的至少两项，才进入正式索引：

1. 有可核验的官方团队主页、成员目录或论文索引；
2. 最近 24 个月有持续公开的论文、模型、数据集、评测或代码；
3. 存在相对稳定、可命名的团队边界，而非一次性项目；
4. 官方 GitHub / Hugging Face 账号可以通过机构官网或项目主页交叉验证；
5. 公开产出被其他机构实际复用，或对某个 AI 子方向有明显影响。

以下情况暂不收：

- 只有单篇论文、单次比赛或短期课程的临时组织；
- 无法找到官方归属证据的同名 GitHub Organization；
- 纯产品营销账号，且没有研究、模型、数据或工程产出；
- 个人账号，除非它是团队公开项目的唯一官方发布入口，此时也只作为补充链接。

## 7. 下一阶段所需字段

```yaml
id: byte-dance-seed
name: ByteDance Seed
parent_id: byte-dance
team_type: research_lab
official_url: https://seed.bytedance.com/
github_orgs: []
huggingface_orgs: []
research_areas: []
evidence: []
last_verified: 2026-07-28
status: active
```

每个 GitHub Organization 都必须同时记录官方归属证据、最后活跃日期和主要研究方向。
