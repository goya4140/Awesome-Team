# Awesome Team · AI 科研团队目录

> GitHub 内可直接浏览的基础资料版。更适合筛选和阅读图表的版本见 [在线目录](https://goya4140.github.io/awesome-team/)。

更新日期：**2026-07-28** · 引用入口：[Google Scholar](https://scholar.google.com/)

当前收录 **148** 个团队（127 verified / 21 provisional），共 **444** 项代表成果；其中 **166** 项已匹配论文元数据，**117** 项带原文图表。

Google Scholar 没有官方公开结构化 API；未逐篇核验的数字不缓存，改为提供精确标题检索入口。`research_index` 是官方研究入口，不冒充单篇论文。

## 快速导航

- [中国公司](#中国公司)
- [中国前沿 AI 公司与研究机构](#中国前沿-ai-公司与研究机构)
- [美国公司](#美国公司)
- [美国前沿 AI 公司](#美国前沿-ai-公司)
- [中国 C9](#中国-c9)
- [港科广](#港科广)
- [香港三校](#香港三校)
- [新加坡两校](#新加坡两校)
- [美国 AI 核心高校](#美国-ai-核心高校)

## 中国公司

### ByteDance（1）

<details>
<summary><img src="https://github.com/ByteDance-Seed.png?size=160" width="32" height="32" alt="ByteDance Seed logo"> &nbsp;<strong>ByteDance Seed</strong> · <code>verified</code></summary>

<br>

ByteDance Seed 隶属于 ByteDance，是一支主要关注基础模型、多模态学习、视频生成等方向的企业研究实验室。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** ByteDance
- **主要方向：** 基础模型、多模态学习、视频生成、AI 系统
- **负责人：** [负责人/成员页](https://seed.bytedance.com/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://seed.bytedance.com/) · [GitHub](https://github.com/ByteDance-Seed)

#### 最近工作 · 2025

<details>
<summary><strong>3. DAComp: Benchmarking Data Agents across the Full Data Intelligence Lifecycle</strong> · arXiv (Cornell University) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22DAComp%3A+Benchmarking+Data+Agents+across+the+Full+Data+Intelligence+Lifecycle%22)（未缓存未经核验的数字）
- GitHub Stars：**433**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2512.04324)

**基于 Abstract 的 TL;DR**

研究者引入DAComp，一个模拟复杂企业数据智能流程的benchmark，评估数据工程和数据分析任务。结果表明，即使是最先进的机器人也难以通过DAComp，表明存在数据工程和分析两个领域都有严重不足。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2512.04324"><img src="https://ar5iv.labs.arxiv.org/html/2512.04324/assets/x5.png" alt="Figure 5 : Error distribution (left), pipeline survival rate (right)." width="720"></a>

> Figure 5 : Error distribution (left), pipeline survival rate (right).
> 来源：[原论文](https://arxiv.org/abs/2512.04324)

</details>

#### 代表作

<details>
<summary><strong>1. [CVPR 2025] VideoWorld is a simple generative model that learns purely from unlabeled videos—much like how babies learn by observing their environment.</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**793**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/ByteDance-Seed/VideoWorld)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：[CVPR 2025] VideoWorld is a simple generative model that learns purely from unlabeled videos—much like how babies learn by observing their environment. 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>2. Trace Anything: Representing Any Video in 4D via Trajectory Fields</strong> · arXiv (Cornell University) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Trace+Anything%3A+Representing+Any+Video+in+4D+via+Trajectory+Fields%22)（未缓存未经核验的数字）
- GitHub Stars：**543**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2510.13802)

**基于 Abstract 的 TL;DR**

该研究旨在开发一种能够有效表示视频动态的方法，即Trajectory Field。该方法将每个视频分成一个连续的3D轨迹，作为动态的基本单位。通过这种方法，提出了Trace Anything神经网络，该模型可以预测整个轨迹场景在单次前向传递中。该模型对4D数据进行了训练，并且实验结果表明：(i) Trace Anything在新建立的轨迹场景估计benchmark上取得了state-of-the-art表现，竞争性地在已有的点跟踪benchmark上表现出色；(ii) 该模型由于其单次前向传递的原则，没有需要进行迭代优化或辅助估计器，从而获得了显著的效率优势；(iii) 该模型还展现出了新颖的能力，包括目标条件操纵、运动预测和空间-时间融合。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2510.13802"><img src="https://ar5iv.labs.arxiv.org/html/2510.13802/assets/x3.png" alt="Figure 3 : Trace Anything pipeline. Input frames are processed by a geometric backbone consisting of an image encoder and a fusion transformer. The control point head outputs dense control point maps 𝐏 i ∈ ℝ D × H × W × 3 \mathbf{P}_{i}\in\mathbb{R}^{D\times H\times W\times 3} , where 𝐏 i , u , v ( k ) \mathbf{P}^{(k)}_{i,u,v} is the k k -th control point for pixel ( u , v ) (u,v) in frame I i I_{i} . These define continuous 3D trajectories 𝐱 i , u , v ​ ( t ) \mathbf{x}_{i,u,v}(t) via cubic B-splines, yielding a 4D reconstruction." width="720"></a>

> Figure 3 : Trace Anything pipeline. Input frames are processed by a geometric backbone consisting of an image encoder and a fusion transformer. The control point head outputs dense control point maps 𝐏 i ∈ ℝ D × H × W × 3 \mathbf{P}_{i}\in\mathbb{R}^{D\times H\times W\times 3} , where 𝐏 i , u , v ( k ) \mathbf{P}^{(k)}_{i,u,v} is the k k -th control point for pixel ( u , v ) (u,v) in frame I i I_{i} . These define continuous 3D trajectories 𝐱 i , u , v ​ ( t ) \mathbf{x}_{i,u,v}(t) via cubic B-splines, yielding a 4D reconstruction.
> 来源：[原论文](https://arxiv.org/abs/2510.13802)

</details>

<details>
<summary><strong>3. DAComp: Benchmarking Data Agents across the Full Data Intelligence Lifecycle</strong> · arXiv (Cornell University) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22DAComp%3A+Benchmarking+Data+Agents+across+the+Full+Data+Intelligence+Lifecycle%22)（未缓存未经核验的数字）
- GitHub Stars：**433**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2512.04324)

**基于 Abstract 的 TL;DR**

研究者引入DAComp，一个模拟复杂企业数据智能流程的benchmark，评估数据工程和数据分析任务。结果表明，即使是最先进的机器人也难以通过DAComp，表明存在数据工程和分析两个领域都有严重不足。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2512.04324"><img src="https://ar5iv.labs.arxiv.org/html/2512.04324/assets/x5.png" alt="Figure 5 : Error distribution (left), pipeline survival rate (right)." width="720"></a>

> Figure 5 : Error distribution (left), pipeline survival rate (right).
> 来源：[原论文](https://arxiv.org/abs/2512.04324)

</details>

</details>

### Alibaba（4）

<details>
<summary><img src="https://github.com/QwenLM.png?size=160" width="32" height="32" alt="Qwen Team logo"> &nbsp;<strong>Qwen Team</strong> · <code>verified</code></summary>

<br>

Qwen Team 隶属于 Alibaba，是一支主要关注大语言模型、多模态学习、智能体等方向的基础模型团队。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** Alibaba
- **主要方向：** 大语言模型、多模态学习、智能体、语音技术
- **负责人：** [负责人/成员页](https://qwenlm.github.io/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [GitHub](https://github.com/QwenLM) · [官网](https://qwenlm.github.io/)

#### 最近工作 · 2025

<details>
<summary><strong>2. PolyMath: Evaluating Mathematical Reasoning in Multilingual Contexts</strong> · arXiv (Cornell University) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22PolyMath%3A+Evaluating+Mathematical+Reasoning+in+Multilingual+Contexts%22)（未缓存未经核验的数字）
- GitHub Stars：**43**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2504.18428)

**基于 Abstract 的 TL;DR**

本文 introduces PolyMath，一个涵盖18种语言和4个难度级别的多语种数学推理benchmark。研究发现，即使是目前最先进的LLM，如Qwen-3-235B-A22B-Thinking和Gemini-2.5-pro，也无法获得高分，表明LLMs在多语种推理中的挑战性仍然存在。控制输出语言可以改善推理性能，尤其对于低资源语言。

</details>

#### 代表作

<details>
<summary><strong>1. ProcessBench: Identifying Process Errors in Mathematical Reasoning</strong> · Proceedings of the 63rd Annual Meeting of the Association for Computational Linguistics (Volume 1: Long Papers) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22ProcessBench%3A+Identifying+Process+Errors+in+Mathematical+Reasoning%22)（未缓存未经核验的数字）
- GitHub Stars：**190**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://doi.org/10.18653/v1/2025.acl-long.50)

**基于 Abstract 的 TL;DR**

该研究探讨了语言模型的多样性和可解释性问题。研究人员使用了多种方法，包括对语言模型的分析和评估，以了解其在不同任务上的表现。实验结果表明，语言模型在某些任务上具有出色的性能，但在其他任务上则存在缺陷。

</details>

<details>
<summary><strong>2. PolyMath: Evaluating Mathematical Reasoning in Multilingual Contexts</strong> · arXiv (Cornell University) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22PolyMath%3A+Evaluating+Mathematical+Reasoning+in+Multilingual+Contexts%22)（未缓存未经核验的数字）
- GitHub Stars：**43**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2504.18428)

**基于 Abstract 的 TL;DR**

本文 introduces PolyMath，一个涵盖18种语言和4个难度级别的多语种数学推理benchmark。研究发现，即使是目前最先进的LLM，如Qwen-3-235B-A22B-Thinking和Gemini-2.5-pro，也无法获得高分，表明LLMs在多语种推理中的挑战性仍然存在。控制输出语言可以改善推理性能，尤其对于低资源语言。

</details>

<details>
<summary><strong>3. The official repo of Qwen (通义千问) chat &amp; pretrained large language model proposed by Alibaba Cloud.</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**21492**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/QwenLM/Qwen)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：The official repo of Qwen (通义千问) chat &amp; pretrained large language model proposed by Alibaba Cloud. 可通过原始链接查看完整项目、论文或数据说明。

</details>

</details>

<details>
<summary><img src="https://github.com/alibaba-damo-academy.png?size=160" width="32" height="32" alt="DAMO Academy logo"> &nbsp;<strong>DAMO Academy</strong> · <code>verified</code></summary>

<br>

DAMO Academy 隶属于 Alibaba，是一支主要关注计算机视觉、语言智能、多模态学习等方向的企业研究实验室。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** Alibaba
- **主要方向：** 计算机视觉、语言智能、多模态学习、AI for Science
- **负责人：** [负责人/成员页](https://damo.alibaba.com/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [GitHub](https://github.com/alibaba-damo-academy) · [官网](https://damo.alibaba.com/)

#### 最近工作 · 2025

<details>
<summary><strong>2. RynnVLA-001: Using Human Demonstrations to Improve Robot Manipulation</strong> · arXiv (Cornell University) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22RynnVLA-001%3A+Using+Human+Demonstrations+to+Improve+Robot+Manipulation%22)（未缓存未经核验的数字）
- GitHub Stars：**303**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2509.15212)

**基于 Abstract 的 TL;DR**

该研究提出了一种两阶段的预训练方法，首先使用12M个自主操作视频进行图像到视频预训练，接着联合预测未来关键点轨迹。结果表明，该方法可以有效提高视觉框架预测和动作预测的性能，并且在同类数据集上超越了现有最佳模型。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2509.15212"><img src="https://ar5iv.labs.arxiv.org/html/2509.15212/assets/x1.png" alt="Figure 1 : Training data pipeline of RynnVLA-001. Our framework leverages three types of training data: (1) Ego-Centric Video Generative Pretraining uses millions of ego-centric human manipulation videos for future frame prediction. (2) Human-Centric Trajectory-Aware Video Modeling trains on videos with human keypoint annotations, enabling joint prediction of frames and trajectories. (3) Robot-Centric Vision-Language-Action Modeling employs robot datasets paired with language instructions to learn mappings from visual observations and language to robotic actions." width="720"></a>

> Figure 1 : Training data pipeline of RynnVLA-001. Our framework leverages three types of training data: (1) Ego-Centric Video Generative Pretraining uses millions of ego-centric human manipulation videos for future frame prediction. (2) Human-Centric Trajectory-Aware Video Modeling trains on videos with human keypoint annotations, enabling joint prediction of frames and trajectories. (3) Robot-Centric Vision-Language-Action Modeling employs robot datasets paired with language instructions to learn mappings from visual observations and language to robotic actions.
> 来源：[原论文](https://arxiv.org/abs/2509.15212)

</details>

#### 代表作

<details>
<summary><strong>1. Uni3C: Unifying Precisely 3D-Enhanced Camera and Human Motion Controls for Video Generation</strong> · arXiv (Cornell University) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Uni3C%3A+Unifying+Precisely+3D-Enhanced+Camera+and+Human+Motion+Controls+for+Video+Generation%22)（未缓存未经核验的数字）
- GitHub Stars：**560**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2504.14899)

**基于 Abstract 的 TL;DR**

Uni3C是一种统一的3D增强框架，旨在精确控制视频生成中的相机和人体运动。该框架通过两个关键贡献来实现这一目标：首先，提出了一个可插拔的控制模块PCDController，利用单眼深度图的未投影点云来实现精确的相机控制；第二，提出了一个统一的3D世界指引， seamless地整合景点点云和SMPL-X人体模型，以统一控制信号。Uni3C在相机控制和人体运动质量方面取得了显著的优势。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2504.14899"><img src="https://ar5iv.labs.arxiv.org/html/2504.14899/assets/x2.png" alt="Figure 2 : The overview pipeline of PCDController. PCDController is built as a lightweight DiT trained from scratch. We first obtain the point clouds via the monocular depth extracted from the first view. Then, the point clouds are warped and rendered into the video V p ​ c ​ d V_{pcd} . The input conditions for PCDController comprise rendered V p ​ c ​ d V_{pcd} , Plücker ray 𝐏 \mathbf{P} , and the noisy latent z t z_{t} . Note that only the PCDController and camera encoder are trainable in our framework." width="720"></a>

> Figure 2 : The overview pipeline of PCDController. PCDController is built as a lightweight DiT trained from scratch. We first obtain the point clouds via the monocular depth extracted from the first view. Then, the point clouds are warped and rendered into the video V p ​ c ​ d V_{pcd} . The input conditions for PCDController comprise rendered V p ​ c ​ d V_{pcd} , Plücker ray 𝐏 \mathbf{P} , and the noisy latent z t z_{t} . Note that only the PCDController and camera encoder are trainable in our framework.
> 来源：[原论文](https://arxiv.org/abs/2504.14899)

</details>

<details>
<summary><strong>2. RynnVLA-001: Using Human Demonstrations to Improve Robot Manipulation</strong> · arXiv (Cornell University) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22RynnVLA-001%3A+Using+Human+Demonstrations+to+Improve+Robot+Manipulation%22)（未缓存未经核验的数字）
- GitHub Stars：**303**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2509.15212)

**基于 Abstract 的 TL;DR**

该研究提出了一种两阶段的预训练方法，首先使用12M个自主操作视频进行图像到视频预训练，接着联合预测未来关键点轨迹。结果表明，该方法可以有效提高视觉框架预测和动作预测的性能，并且在同类数据集上超越了现有最佳模型。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2509.15212"><img src="https://ar5iv.labs.arxiv.org/html/2509.15212/assets/x1.png" alt="Figure 1 : Training data pipeline of RynnVLA-001. Our framework leverages three types of training data: (1) Ego-Centric Video Generative Pretraining uses millions of ego-centric human manipulation videos for future frame prediction. (2) Human-Centric Trajectory-Aware Video Modeling trains on videos with human keypoint annotations, enabling joint prediction of frames and trajectories. (3) Robot-Centric Vision-Language-Action Modeling employs robot datasets paired with language instructions to learn mappings from visual observations and language to robotic actions." width="720"></a>

> Figure 1 : Training data pipeline of RynnVLA-001. Our framework leverages three types of training data: (1) Ego-Centric Video Generative Pretraining uses millions of ego-centric human manipulation videos for future frame prediction. (2) Human-Centric Trajectory-Aware Video Modeling trains on videos with human keypoint annotations, enabling joint prediction of frames and trajectories. (3) Robot-Centric Vision-Language-Action Modeling employs robot datasets paired with language instructions to learn mappings from visual observations and language to robotic actions.
> 来源：[原论文](https://arxiv.org/abs/2509.15212)

</details>

<details>
<summary><strong>3. [ICLR 2026] Lumos Project: Frontier video unified model research by Alibaba DAMO Academy.</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**161**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/alibaba-damo-academy/Lumos)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：[ICLR 2026] Lumos Project: Frontier video unified model research by Alibaba DAMO Academy. 可通过原始链接查看完整项目、论文或数据说明。

</details>

</details>

<details>
<summary><img src="https://github.com/Alibaba-NLP.png?size=160" width="32" height="32" alt="Alibaba NLP logo"> &nbsp;<strong>Alibaba NLP</strong> · <code>verified</code></summary>

<br>

Alibaba NLP 隶属于 Alibaba，是一支主要关注自然语言处理、信息检索、智能体的企业研究团队。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** Alibaba
- **主要方向：** 自然语言处理、信息检索、智能体
- **负责人：** [负责人/成员页](https://github.com/Alibaba-NLP) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [GitHub](https://github.com/Alibaba-NLP)

#### 最近工作 · 2025

<details>
<summary><strong>3. Detecting Knowledge Boundary of Vision Large Language Models by Sampling-Based Inference</strong> · arXiv (Cornell University) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Detecting+Knowledge+Boundary+of+Vision+Large+Language+Models+by+Sampling-Based+Inference%22)（未缓存未经核验的数字）
- GitHub Stars：**2**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2502.18023)

**基于 Abstract 的 TL;DR**

该研究旨在解决 Vision Large Language Models（VLLMs）在处理知识密集或需要实时信息的问题。研究者提出了一个方法来检测 VLLMs 的知识界限，从而可以更高效地使用 Retrieval Augmented Generation（RAG）技术。实验结果表明，该方法能够有效识别 VLLM 的知识界限，并且可以减少不必要的检索，同时保持或提高性能。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2502.18023"><img src="https://ar5iv.labs.arxiv.org/html/2502.18023/assets/x2.png" alt="Figure 2: Method illustration of training a Knowledge Boundary model." width="720"></a>

> Figure 2: Method illustration of training a Knowledge Boundary model.
> 来源：[原论文](https://arxiv.org/abs/2502.18023)

</details>

#### 代表作

<details>
<summary><strong>1. ViDoRAG: Visual Document Retrieval-Augmented Generation via Dynamic Iterative Reasoning Agents</strong> · arXiv (Cornell University) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22ViDoRAG%3A+Visual+Document+Retrieval-Augmented+Generation+via+Dynamic+Iterative+Reasoning+Agents%22)（未缓存未经核验的数字）
- GitHub Stars：**669**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2502.18017)

**基于 Abstract 的 TL;DR**

以下是简要的 TL;DR : 研究问题：传统的Retrieval-Augmented Generation（RAG）方法难以有效处理视觉丰富的文档，导致信息理解和推理能力有限。现有的 benchmarks主要关注图像-based问答（QA），忽略了视觉文档中效率的检索、理解和推理挑战。 核心方法：我们提出了ViDoSeek.dataset和ViDoRAG框架，旨在评估RAG性能在视觉丰富文档上。ViDoRAG采用Gaussian Mixture Model（GMM）-based混合策略来有效处理多模态检索，并引入了迭代代理流程，以促进模型的推理能力。 主要实验结论：我们的方法ViDoRAG在竞争性基准 ViDoSeek上表现出显著优势，超过现有方法的10%。

</details>

<details>
<summary><strong>2. Unfolding the Headline: Iterative Self-Questioning for News Retrieval and Timeline Summarization</strong> · arXiv (Cornell University) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Unfolding+the+Headline%3A+Iterative+Self-Questioning+for+News+Retrieval+and+Timeline+Summarization%22)（未缓存未经核验的数字）
- GitHub Stars：**297**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2501.00888)

**基于 Abstract 的 TL;DR**

该研究提出了一种名为CHRONOS的方法，用于构建开源新闻时线总结。该方法通过反复询问和更新信息来聚集相关文档，并在每个轮次中生成基于文档检索的时间线总结。实验结果表明，CHRONOS不仅能够有效地处理开源时线总结，而且也与已有的闭域应用系统相比表现出相当好的效果。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2501.00888"><img src="https://ar5iv.labs.arxiv.org/html/2501.00888/assets/x2.png" alt="Figure 2: Pipeline of CHRONOS. Giving a target news, it first searches for general context and iteratively poses questions to retrieve more relevant news, while employing a divide-and-conquer strategy to generate the timeline." width="720"></a>

> Figure 2: Pipeline of CHRONOS. Giving a target news, it first searches for general context and iteratively poses questions to retrieve more relevant news, while employing a divide-and-conquer strategy to generate the timeline.
> 来源：[原论文](https://arxiv.org/abs/2501.00888)

</details>

<details>
<summary><strong>3. Detecting Knowledge Boundary of Vision Large Language Models by Sampling-Based Inference</strong> · arXiv (Cornell University) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Detecting+Knowledge+Boundary+of+Vision+Large+Language+Models+by+Sampling-Based+Inference%22)（未缓存未经核验的数字）
- GitHub Stars：**2**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2502.18023)

**基于 Abstract 的 TL;DR**

该研究旨在解决 Vision Large Language Models（VLLMs）在处理知识密集或需要实时信息的问题。研究者提出了一个方法来检测 VLLMs 的知识界限，从而可以更高效地使用 Retrieval Augmented Generation（RAG）技术。实验结果表明，该方法能够有效识别 VLLM 的知识界限，并且可以减少不必要的检索，同时保持或提高性能。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2502.18023"><img src="https://ar5iv.labs.arxiv.org/html/2502.18023/assets/x2.png" alt="Figure 2: Method illustration of training a Knowledge Boundary model." width="720"></a>

> Figure 2: Method illustration of training a Knowledge Boundary model.
> 来源：[原论文](https://arxiv.org/abs/2502.18023)

</details>

</details>

<details>
<summary><img src="https://github.com/modelscope.png?size=160" width="32" height="32" alt="ModelScope logo"> &nbsp;<strong>ModelScope</strong> · <code>verified</code></summary>

<br>

ModelScope 隶属于 Alibaba，是一支主要关注开放模型、多模态学习、模型评测等方向的研究平台。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** Alibaba
- **主要方向：** 开放模型、多模态学习、模型评测、AI 系统
- **负责人：** [负责人/成员页](https://modelscope.cn/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://modelscope.cn/) · [GitHub](https://github.com/modelscope)

#### 最近工作 · 2026-07-28

<details>
<summary><strong>1. Use PEFT or Full-parameter to CPT/SFT/DPO/GRPO 600+ LLMs (Qwen3.6, DeepSeek-V4, GLM-5.1, InternLM3, Llama4, ...) and 300+ MLLMs (Qwen3-VL, Qwen3-Omni, InternVL3.5, Ovis2.5, GLM4.5v, Gemma4, Llava, Phi4, ...) (AAAI 2025).</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**14973**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/modelscope/ms-swift)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：Use PEFT or Full-parameter to CPT/SFT/DPO/GRPO 600+ LLMs (Qwen3.6, DeepSeek-V4, GLM-5.1, InternLM3, Llama4, ...) and 300+ MLLMs (Qwen3-VL, Qwen3-Omni, InternVL3.5, Ovis2.5, GLM4.5v, Gemma4, Llava, Phi4, ...) (AAAI 2025). 可通过原始链接查看完整项目、论文或数据说明。

</details>

#### 代表作

<details>
<summary><strong>1. Use PEFT or Full-parameter to CPT/SFT/DPO/GRPO 600+ LLMs (Qwen3.6, DeepSeek-V4, GLM-5.1, InternLM3, Llama4, ...) and 300+ MLLMs (Qwen3-VL, Qwen3-Omni, InternVL3.5, Ovis2.5, GLM4.5v, Gemma4, Llava, Phi4, ...) (AAAI 2025).</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**14973**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/modelscope/ms-swift)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：Use PEFT or Full-parameter to CPT/SFT/DPO/GRPO 600+ LLMs (Qwen3.6, DeepSeek-V4, GLM-5.1, InternLM3, Llama4, ...) and 300+ MLLMs (Qwen3-VL, Qwen3-Omni, InternVL3.5, Ovis2.5, GLM4.5v, Gemma4, Llava, Phi4, ...) (AAAI 2025). 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>2. ModelScope: bring the notion of Model-as-a-Service to life.</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**9059**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/modelscope/modelscope)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：ModelScope: bring the notion of Model-as-a-Service to life. 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>3. FunASR-powered video transcription, subtitle generation, and LLM-assisted clipping tool with a local Gradio UI.</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**6072**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/modelscope/FunClip)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：FunASR-powered video transcription, subtitle generation, and LLM-assisted clipping tool with a local Gradio UI. 可通过原始链接查看完整项目、论文或数据说明。

</details>

</details>

### Tencent（4）

<details>
<summary><img src="https://github.com/Tencent-Hunyuan.png?size=160" width="32" height="32" alt="Tencent Hunyuan logo"> &nbsp;<strong>Tencent Hunyuan</strong> · <code>verified</code></summary>

<br>

Tencent Hunyuan 隶属于 Tencent，是一支主要关注大语言模型、多模态学习、图像生成等方向的基础模型团队。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** Tencent
- **主要方向：** 大语言模型、多模态学习、图像生成、视频生成
- **负责人：** [负责人/成员页](https://hunyuan.tencent.com/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://hunyuan.tencent.com/) · [GitHub](https://github.com/Tencent-Hunyuan)

#### 最近工作 · 2025

<details>
<summary><strong>3. HunyuanPortrait: Implicit Condition Control for Enhanced Portrait Animation</strong> · 2025 IEEE/CVF Conference on Computer Vision and Pattern Recognition (CVPR) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22HunyuanPortrait%3A+Implicit+Condition+Control+for+Enhanced+Portrait+Animation%22)（未缓存未经核验的数字）
- GitHub Stars：**345**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://doi.org/10.1109/cvpr52734.2025.01483)

**基于 Abstract 的 TL;DR**

HunyuanPortrait是一种基于diffusion的条件控制方法，能够实现高可控性和 lifelike 的portrait动画。该方法利用预训练编码器分离 portrait 动态信息和身份信息，并使用隐式表示作为控制信号。在实验中，HunyuanPortrait表现出强大的通用性能，可以有效分离外观和动态在不同图像风格下。

</details>

#### 代表作

<details>
<summary><strong>1. [ICML 2026] WorldMirror: Fast and Universal 3D reconstruction model for versatile tasks</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**1174**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/Tencent-Hunyuan/HunyuanWorld-Mirror)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：[ICML 2026] WorldMirror: Fast and Universal 3D reconstruction model for versatile tasks 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>2. [ECCV 2026] MixGRPO: Unlocking Flow-based GRPO Efficiency with Mixed ODE-SDE</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**1159**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/Tencent-Hunyuan/MixGRPO)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：[ECCV 2026] MixGRPO: Unlocking Flow-based GRPO Efficiency with Mixed ODE-SDE 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>3. HunyuanPortrait: Implicit Condition Control for Enhanced Portrait Animation</strong> · 2025 IEEE/CVF Conference on Computer Vision and Pattern Recognition (CVPR) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22HunyuanPortrait%3A+Implicit+Condition+Control+for+Enhanced+Portrait+Animation%22)（未缓存未经核验的数字）
- GitHub Stars：**345**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://doi.org/10.1109/cvpr52734.2025.01483)

**基于 Abstract 的 TL;DR**

HunyuanPortrait是一种基于diffusion的条件控制方法，能够实现高可控性和 lifelike 的portrait动画。该方法利用预训练编码器分离 portrait 动态信息和身份信息，并使用隐式表示作为控制信号。在实验中，HunyuanPortrait表现出强大的通用性能，可以有效分离外观和动态在不同图像风格下。

</details>

</details>

<details>
<summary><img src="https://github.com/tencent-ailab.png?size=160" width="32" height="32" alt="Tencent AI Lab logo"> &nbsp;<strong>Tencent AI Lab</strong> · <code>verified</code></summary>

<br>

Tencent AI Lab 隶属于 Tencent，是一支主要关注机器学习、自然语言处理、计算机视觉等方向的企业研究实验室。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** Tencent
- **主要方向：** 机器学习、自然语言处理、计算机视觉、AI for Science
- **负责人：** [负责人/成员页](https://ailab.tencent.com/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://ailab.tencent.com/) · [GitHub](https://github.com/tencent-ailab)

#### 最近工作 · 2023

<details>
<summary><strong>2. IP-Adapter: Text Compatible Image Prompt Adapter for Text-to-Image Diffusion Models</strong> · arXiv (Cornell University) · 2023</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22IP-Adapter%3A+Text+Compatible+Image+Prompt+Adapter+for+Text-to-Image+Diffusion+Models%22)（未缓存未经核验的数字）
- GitHub Stars：**6644**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2308.06721)

**基于 Abstract 的 TL;DR**

该研究探讨了如何将预训练的文本到图像diffusion模型转换为图像提示能力。研究人员提出了IP-Adapter，一个轻量化的适配器，可以在不需要大量计算资源的情况下实现图像提示功能。通过使用分离的交叉注意机制，IP-Adapter可以有效地将预训练的diffusion模型转换为图像提示能力，并且可以与其他基准模型、文本提示和结构控制相兼容。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2308.06721"><img src="https://ar5iv.labs.arxiv.org/html/2308.06721/assets/x2.png" alt="Figure 2: The overall architecture of our proposed IP-Adapter with decoupled cross-attention strategy. Only the newly added modules (in red color) are trained while the pretrained text-to-image model is frozen." width="720"></a>

> Figure 2: The overall architecture of our proposed IP-Adapter with decoupled cross-attention strategy. Only the newly added modules (in red color) are trained while the pretrained text-to-image model is frozen.
> 来源：[原论文](https://arxiv.org/abs/2308.06721)

</details>

#### 代表作

<details>
<summary><strong>1. Efficient Zero-shot Event Extraction with Context-Definition Alignment</strong> · Findings of the Association for Computational Linguistics: EMNLP 2022 · 2022</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Efficient+Zero-shot+Event+Extraction+with+Context-Definition+Alignment%22)（未缓存未经核验的数字）
- GitHub Stars：**11**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://doi.org/10.18653/v1/2022.findings-emnlp.531)

**基于 Abstract 的 TL;DR**

本研究探讨了事件提取（Event Extraction，EE）任务的零-shot学习问题。该方法使用对比学习和温化阶段来将事件提取和定义语义融合到同一个空间中，从而实现有效的零-shot学习。实验结果表明，该模型在MAVEN数据集上显著优于之前的零-shot EE 方法，并且可以轻松应用于少样本设置，超越baseline的监督方法。

</details>

<details>
<summary><strong>2. IP-Adapter: Text Compatible Image Prompt Adapter for Text-to-Image Diffusion Models</strong> · arXiv (Cornell University) · 2023</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22IP-Adapter%3A+Text+Compatible+Image+Prompt+Adapter+for+Text-to-Image+Diffusion+Models%22)（未缓存未经核验的数字）
- GitHub Stars：**6644**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2308.06721)

**基于 Abstract 的 TL;DR**

该研究探讨了如何将预训练的文本到图像diffusion模型转换为图像提示能力。研究人员提出了IP-Adapter，一个轻量化的适配器，可以在不需要大量计算资源的情况下实现图像提示功能。通过使用分离的交叉注意机制，IP-Adapter可以有效地将预训练的diffusion模型转换为图像提示能力，并且可以与其他基准模型、文本提示和结构控制相兼容。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2308.06721"><img src="https://ar5iv.labs.arxiv.org/html/2308.06721/assets/x2.png" alt="Figure 2: The overall architecture of our proposed IP-Adapter with decoupled cross-attention strategy. Only the newly added modules (in red color) are trained while the pretrained text-to-image model is frozen." width="720"></a>

> Figure 2: The overall architecture of our proposed IP-Adapter with decoupled cross-attention strategy. Only the newly added modules (in red color) are trained while the pretrained text-to-image model is frozen.
> 来源：[原论文](https://arxiv.org/abs/2308.06721)

</details>

<details>
<summary><strong>3. V-Express aims to generate a talking head video under the control of a reference image, an audio, and a sequence of V-Kps images.</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**2357**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/tencent-ailab/V-Express)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：V-Express aims to generate a talking head video under the control of a reference image, an audio, and a sequence of V-Kps images. 可通过原始链接查看完整项目、论文或数据说明。

</details>

</details>

<details>
<summary><img src="https://github.com/TencentARC.png?size=160" width="32" height="32" alt="Tencent ARC Lab logo"> &nbsp;<strong>Tencent ARC Lab</strong> · <code>verified</code></summary>

<br>

Tencent ARC Lab 隶属于 Tencent，是一支主要关注计算机视觉、计算机图形学、多模态学习等方向的企业研究实验室。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** Tencent
- **主要方向：** 计算机视觉、计算机图形学、多模态学习、游戏 AI
- **负责人：** [负责人/成员页](https://arc.tencent.com/research) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://arc.tencent.com/research) · [GitHub](https://github.com/TencentARC)

#### 最近工作 · 2026

<details>
<summary><strong>2. Pixal3D: Pixel-Aligned 3D Generation from Images</strong> · arXiv (Cornell University) · 2026</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Pixal3D%3A+Pixel-Aligned+3D+Generation+from+Images%22)（未缓存未经核验的数字）
- GitHub Stars：**2041**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2605.10922)

**基于 Abstract 的 TL;DR**

研究者提出了Pixal3D，一个能够生成高精度的3D模型的方法。该方法通过将图像中的特征直接投影到3D空间中，解决了2D-3D correspondence问题，从而实现了高精度的3D生成。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2605.10922"><img src="https://ar5iv.labs.arxiv.org/html/2605.10922/assets/x1.png" alt="Figure 2. Overview of the Pixal3D framework. The framework consists of three key components: (1) Pixel-Aligned Structured Latent Representation Learning (top-right), which uses a VAE to compress pixel-aligned sparse SDF into efficient sparse latents; (2) an Image Back-Projection-based Conditioner (top-left) that explicitly lifts 2D image features into 3D feature volumes; and (3) a two-stage generative process (Structure Generation and Structured Latents Generation) conditioned on these volumes to predict coarse structure and detailed latents, respectively. Finally, the generated latents are decoded into a high-fidelity mesh." width="720"></a>

> Figure 2. Overview of the Pixal3D framework. The framework consists of three key components: (1) Pixel-Aligned Structured Latent Representation Learning (top-right), which uses a VAE to compress pixel-aligned sparse SDF into efficient sparse latents; (2) an Image Back-Projection-based Conditioner (top-left) that explicitly lifts 2D image features into 3D feature volumes; and (3) a two-stage generative process (Structure Generation and Structured Latents Generation) conditioned on these volumes to predict coarse structure and detailed latents, respectively. Finally, the generated latents are decoded into a high-fidelity mesh.
> 来源：[原论文](https://arxiv.org/abs/2605.10922)

</details>

#### 代表作

<details>
<summary><strong>1. PhotoMaker [CVPR 2024]</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**10099**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/TencentARC/PhotoMaker)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：PhotoMaker [CVPR 2024] 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>2. Pixal3D: Pixel-Aligned 3D Generation from Images</strong> · arXiv (Cornell University) · 2026</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Pixal3D%3A+Pixel-Aligned+3D+Generation+from+Images%22)（未缓存未经核验的数字）
- GitHub Stars：**2041**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2605.10922)

**基于 Abstract 的 TL;DR**

研究者提出了Pixal3D，一个能够生成高精度的3D模型的方法。该方法通过将图像中的特征直接投影到3D空间中，解决了2D-3D correspondence问题，从而实现了高精度的3D生成。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2605.10922"><img src="https://ar5iv.labs.arxiv.org/html/2605.10922/assets/x1.png" alt="Figure 2. Overview of the Pixal3D framework. The framework consists of three key components: (1) Pixel-Aligned Structured Latent Representation Learning (top-right), which uses a VAE to compress pixel-aligned sparse SDF into efficient sparse latents; (2) an Image Back-Projection-based Conditioner (top-left) that explicitly lifts 2D image features into 3D feature volumes; and (3) a two-stage generative process (Structure Generation and Structured Latents Generation) conditioned on these volumes to predict coarse structure and detailed latents, respectively. Finally, the generated latents are decoded into a high-fidelity mesh." width="720"></a>

> Figure 2. Overview of the Pixal3D framework. The framework consists of three key components: (1) Pixel-Aligned Structured Latent Representation Learning (top-right), which uses a VAE to compress pixel-aligned sparse SDF into efficient sparse latents; (2) an Image Back-Projection-based Conditioner (top-left) that explicitly lifts 2D image features into 3D feature volumes; and (3) a two-stage generative process (Structure Generation and Structured Latents Generation) conditioned on these volumes to predict coarse structure and detailed latents, respectively. Finally, the generated latents are decoded into a high-fidelity mesh.
> 来源：[原论文](https://arxiv.org/abs/2605.10922)

</details>

<details>
<summary><strong>3. BrushNet: A Plug-and-Play Image Inpainting Model with Decomposed Dual-Branch Diffusion</strong> · arXiv (Cornell University) · 2024</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22BrushNet%3A+A+Plug-and-Play+Image+Inpainting+Model+with+Decomposed+Dual-Branch+Diffusion%22)（未缓存未经核验的数字）
- GitHub Stars：**1737**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2403.06976)

**基于 Abstract 的 TL;DR**

研究问题是如何改善图像填充模型的性能。该研究提出了一种新颖的方法，即将掩盖图像特征和噪声latent分离为两个独立支线，减少模型的学习负担。这导致了更细致入微地包含必要的掩盖图像信息。在本文中，提出了BrushNet模型，该模型可以在任何预训练的DM中嵌入pixel级掩盖图像特征，从而实现更加一致和高质量的图像填充结果。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2403.06976"><img src="https://ar5iv.labs.arxiv.org/html/2403.06976/assets/x3.png" alt="Figure 3 : Model overview. Our model outputs an inpainted image given the mask and masked image input. Firstly, we downsample the mask to accommodate the size of the latent, and input the masked image to the VAE encoder to align the distribution of latent space. Then, noisy latent, masked image latent, and downsampled mask are concatenated as the input of BrushNet . The feature extracted from BrushNet  is added to pretrained UNet layer by layer after a zero convolution block  [ 51 ] . After denoising, the generated image and masked image are blended with a blurred mask." width="720"></a>

> Figure 3 : Model overview. Our model outputs an inpainted image given the mask and masked image input. Firstly, we downsample the mask to accommodate the size of the latent, and input the masked image to the VAE encoder to align the distribution of latent space. Then, noisy latent, masked image latent, and downsampled mask are concatenated as the input of BrushNet . The feature extracted from BrushNet  is added to pretrained UNet layer by layer after a zero convolution block  [ 51 ] . After denoising, the generated image and masked image are blended with a blurred mask.
> 来源：[原论文](https://arxiv.org/abs/2403.06976)

</details>

</details>

<details>
<summary><img src="https://github.com/Tencent.png?size=160" width="32" height="32" alt="Tencent Youtu Lab logo"> &nbsp;<strong>Tencent Youtu Lab</strong> · <code>provisional</code></summary>

<br>

Tencent Youtu Lab 隶属于 Tencent，是一支主要关注计算机视觉、多模态学习、生成式 AI的企业研究实验室。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** Tencent
- **主要方向：** 计算机视觉、多模态学习、生成式 AI
- **负责人：** [负责人/成员页](https://open.youtu.qq.com/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://open.youtu.qq.com/) · [GitHub](https://github.com/Tencent)

#### 最近工作 · 2024

<details>
<summary><strong>1. DepthCrafter: Generating Consistent Long Depth Sequences for Open-world Videos</strong> · arXiv (Cornell University) · 2024</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22DepthCrafter%3A+Generating+Consistent+Long+Depth+Sequences+for+Open-world+Videos%22)（未缓存未经核验的数字）
- GitHub Stars：**1568**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2409.02095)

**基于 Abstract 的 TL;DR**

DepthCrafter是一种能够生成高详细度长深图序列的方法，适用于开放世界视频。该方法不需要额外信息，如相机姿势或光流来实现。通过设计的三阶段训练策略，DepthCrafter可以在一时间内生成长度可变的深图序列，直到110帧，并从现实和合成数据集中获取精确深度细节和丰富内容多样性。该方法也提供了处理极长视频的推断策略，通过段位估计和无缝接合来实现。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2409.02095"><img src="https://ar5iv.labs.arxiv.org/html/2409.02095/assets/x2.png" alt="Figure 2 : Overview of our DepthCrafter . It is a conditional diffusion model that models the distribution p ​ ( 𝐝 | 𝐯 ) 𝑝 conditional 𝐝 𝐯 p(\mathbf{d}\,|\,\mathbf{v}) over the depth sequence 𝐝 𝐝 \mathbf{d} conditioned on the input video 𝐯 𝐯 \mathbf{v} . We train the model in three stages, where the spatial or temporal layers of the diffusion model are progressively learned on our compiled realistic or synthetic datasets with variable lengths T 𝑇 T . During inference, given an open-world video, it can generate temporally consistent long depth sequences with fine-grained details for the entire video from initialized Gaussian noise, without requiring any supplementary information, such as came" width="720"></a>

> Figure 2 : Overview of our DepthCrafter . It is a conditional diffusion model that models the distribution p ​ ( 𝐝 | 𝐯 ) 𝑝 conditional 𝐝 𝐯 p(\mathbf{d}\,|\,\mathbf{v}) over the depth sequence 𝐝 𝐝 \mathbf{d} conditioned on the input video 𝐯 𝐯 \mathbf{v} . We train the model in three stages, where the spatial or temporal layers of the diffusion model are progressively learned on our compiled realistic or synthetic datasets with variable lengths T 𝑇 T . During inference, given an open-world video, it can generate temporally consistent long depth sequences with fine-grained details for the entire video from initialized Gaussian noise, without requiring any supplementary information, such as came
> 来源：[原论文](https://arxiv.org/abs/2409.02095)

</details>

#### 代表作

<details>
<summary><strong>1. DepthCrafter: Generating Consistent Long Depth Sequences for Open-world Videos</strong> · arXiv (Cornell University) · 2024</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22DepthCrafter%3A+Generating+Consistent+Long+Depth+Sequences+for+Open-world+Videos%22)（未缓存未经核验的数字）
- GitHub Stars：**1568**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2409.02095)

**基于 Abstract 的 TL;DR**

DepthCrafter是一种能够生成高详细度长深图序列的方法，适用于开放世界视频。该方法不需要额外信息，如相机姿势或光流来实现。通过设计的三阶段训练策略，DepthCrafter可以在一时间内生成长度可变的深图序列，直到110帧，并从现实和合成数据集中获取精确深度细节和丰富内容多样性。该方法也提供了处理极长视频的推断策略，通过段位估计和无缝接合来实现。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2409.02095"><img src="https://ar5iv.labs.arxiv.org/html/2409.02095/assets/x2.png" alt="Figure 2 : Overview of our DepthCrafter . It is a conditional diffusion model that models the distribution p ​ ( 𝐝 | 𝐯 ) 𝑝 conditional 𝐝 𝐯 p(\mathbf{d}\,|\,\mathbf{v}) over the depth sequence 𝐝 𝐝 \mathbf{d} conditioned on the input video 𝐯 𝐯 \mathbf{v} . We train the model in three stages, where the spatial or temporal layers of the diffusion model are progressively learned on our compiled realistic or synthetic datasets with variable lengths T 𝑇 T . During inference, given an open-world video, it can generate temporally consistent long depth sequences with fine-grained details for the entire video from initialized Gaussian noise, without requiring any supplementary information, such as came" width="720"></a>

> Figure 2 : Overview of our DepthCrafter . It is a conditional diffusion model that models the distribution p ​ ( 𝐝 | 𝐯 ) 𝑝 conditional 𝐝 𝐯 p(\mathbf{d}\,|\,\mathbf{v}) over the depth sequence 𝐝 𝐝 \mathbf{d} conditioned on the input video 𝐯 𝐯 \mathbf{v} . We train the model in three stages, where the spatial or temporal layers of the diffusion model are progressively learned on our compiled realistic or synthetic datasets with variable lengths T 𝑇 T . During inference, given an open-world video, it can generate temporally consistent long depth sequences with fine-grained details for the entire video from initialized Gaussian noise, without requiring any supplementary information, such as came
> 来源：[原论文](https://arxiv.org/abs/2409.02095)

</details>

<details>
<summary><strong>2. libco is a coroutine library which is widely used in wechat  back-end service. It has been running on tens of thousands of machines since 2013.</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**8682**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/Tencent/libco)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：libco is a coroutine library which is widely used in wechat back-end service. It has been running on tens of thousands of machines since 2013. 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>3. 🏆 Real-Time no-code, powerful and secure ORM 🚀  providing APIs and Docs without coding by Backend, and Frontend(Client) can customize response JSONs 🏆 实时 零代码、全功能、强安全 ORM 库 🚀 后端接口和文档零代码，前端(客户端) 定制返回 JSON 的数据和结构</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**18391**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/Tencent/APIJSON)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：🏆 Real-Time no-code, powerful and secure ORM 🚀 providing APIs and Docs without coding by Backend, and Frontend(Client) can customize response JSONs 🏆 实时 零代码、全功能、强安全 ORM 库 🚀 后端接口和文档零代码，前端(客户端) 定制返回 JSON 的数据和结构 可通过原始链接查看完整项目、论文或数据说明。

</details>

</details>

### Huawei（1）

<details>
<summary><img src="https://github.com/huawei-noah.png?size=160" width="32" height="32" alt="Huawei Noah&#39;s Ark Lab logo"> &nbsp;<strong>Huawei Noah&#39;s Ark Lab</strong> · <code>verified</code></summary>

<br>

Huawei Noah's Ark Lab 隶属于 Huawei，是一支主要关注基础模型、机器学习、决策学习等方向的企业研究实验室。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** Huawei
- **主要方向：** 基础模型、机器学习、决策学习、AI 系统
- **负责人：** [负责人/成员页](https://www.noahlab.com.hk/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://www.noahlab.com.hk/) · [GitHub](https://github.com/huawei-noah)

#### 最近工作 · 2026-06-01

<details>
<summary><strong>1. Trustworthy AI related projects</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**1127**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/huawei-noah/trustworthyAI)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：Trustworthy AI related projects 可通过原始链接查看完整项目、论文或数据说明。

</details>

#### 代表作

<details>
<summary><strong>1. Trustworthy AI related projects</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**1127**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/huawei-noah/trustworthyAI)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：Trustworthy AI related projects 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>2. Efficient AI Backbones including GhostNet, TNT and MLP, developed by Huawei Noah&#39;s Ark Lab.</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**4417**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/huawei-noah/Efficient-AI-Backbones)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：Efficient AI Backbones including GhostNet, TNT and MLP, developed by Huawei Noah&#39;s Ark Lab. 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>3. Pretrained language model and its related optimization techniques developed by Huawei Noah&#39;s Ark Lab.</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**3163**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/huawei-noah/Pretrained-Language-Model)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：Pretrained language model and its related optimization techniques developed by Huawei Noah&#39;s Ark Lab. 可通过原始链接查看完整项目、论文或数据说明。

</details>

</details>

### Baidu（2）

<details>
<summary><img src="https://github.com/PaddlePaddle.png?size=160" width="32" height="32" alt="ERNIE Team logo"> &nbsp;<strong>ERNIE Team</strong> · <code>verified</code></summary>

<br>

ERNIE Team 隶属于 Baidu，是一支主要关注大语言模型、多模态学习、知识增强学习的基础模型团队。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** Baidu
- **主要方向：** 大语言模型、多模态学习、知识增强学习
- **负责人：** [负责人/成员页](https://ernie.baidu.com/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://ernie.baidu.com/) · [GitHub](https://github.com/PaddlePaddle/ERNIE)

#### 最近工作 · 2026-07-24

<details>
<summary><strong>1. The official repository for ERNIE 4.5 and ERNIEKit – its industrial-grade development toolkit based on PaddlePaddle.</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**7727**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/PaddlePaddle/ERNIE)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：The official repository for ERNIE 4.5 and ERNIEKit – its industrial-grade development toolkit based on PaddlePaddle. 可通过原始链接查看完整项目、论文或数据说明。

</details>

#### 代表作

<details>
<summary><strong>1. The official repository for ERNIE 4.5 and ERNIEKit – its industrial-grade development toolkit based on PaddlePaddle.</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**7727**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/PaddlePaddle/ERNIE)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：The official repository for ERNIE 4.5 and ERNIEKit – its industrial-grade development toolkit based on PaddlePaddle. 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>2. Easy-to-use Speech Toolkit including Self-Supervised Learning model, SOTA/Streaming ASR with punctuation, Streaming TTS with text frontend, Speaker Verification System, End-to-End Speech Translation and Keyword Spotting. Won NAACL2022 Best Demo Award.</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**12654**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/PaddlePaddle/PaddleSpeech)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：Easy-to-use Speech Toolkit including Self-Supervised Learning model, SOTA/Streaming ASR with punctuation, Streaming TTS with text frontend, Speaker Verification System, End-to-End Speech Translation and Keyword Spotting. Won NAACL2022 Best Demo Award. 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>3. Turn any PDF or image document into structured data for your AI. A powerful, lightweight OCR toolkit that bridges the gap between images/PDFs and LLMs. Supports 100+ languages.</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**86387**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/PaddlePaddle/PaddleOCR)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：Turn any PDF or image document into structured data for your AI. A powerful, lightweight OCR toolkit that bridges the gap between images/PDFs and LLMs. Supports 100+ languages. 可通过原始链接查看完整项目、论文或数据说明。

</details>

</details>

<details>
<summary><img src="https://github.com/PaddlePaddle.png?size=160" width="32" height="32" alt="PaddlePaddle logo"> &nbsp;<strong>PaddlePaddle</strong> · <code>verified</code></summary>

<br>

PaddlePaddle 隶属于 Baidu，是一支主要关注深度学习框架、基础模型、计算机视觉等方向的研究平台。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** Baidu
- **主要方向：** 深度学习框架、基础模型、计算机视觉、AI 系统
- **负责人：** [负责人/成员页](https://www.paddlepaddle.org.cn/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://www.paddlepaddle.org.cn/) · [GitHub](https://github.com/PaddlePaddle)

#### 最近工作 · 2026-07-28

<details>
<summary><strong>3. PArallel Distributed Deep LEarning: Machine Learning Framework from Industrial Practice （『飞桨』核心框架，深度学习&amp;机器学习高性能单机、分布式训练和跨平台部署）</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**24036**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/PaddlePaddle/Paddle)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：PArallel Distributed Deep LEarning: Machine Learning Framework from Industrial Practice （『飞桨』核心框架，深度学习&amp;机器学习高性能单机、分布式训练和跨平台部署） 可通过原始链接查看完整项目、论文或数据说明。

</details>

#### 代表作

<details>
<summary><strong>1. Easy-to-use Speech Toolkit including Self-Supervised Learning model, SOTA/Streaming ASR with punctuation, Streaming TTS with text frontend, Speaker Verification System, End-to-End Speech Translation and Keyword Spotting. Won NAACL2022 Best Demo Award.</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**12654**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/PaddlePaddle/PaddleSpeech)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：Easy-to-use Speech Toolkit including Self-Supervised Learning model, SOTA/Streaming ASR with punctuation, Streaming TTS with text frontend, Speaker Verification System, End-to-End Speech Translation and Keyword Spotting. Won NAACL2022 Best Demo Award. 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>2. Turn any PDF or image document into structured data for your AI. A powerful, lightweight OCR toolkit that bridges the gap between images/PDFs and LLMs. Supports 100+ languages.</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**86387**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/PaddlePaddle/PaddleOCR)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：Turn any PDF or image document into structured data for your AI. A powerful, lightweight OCR toolkit that bridges the gap between images/PDFs and LLMs. Supports 100+ languages. 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>3. PArallel Distributed Deep LEarning: Machine Learning Framework from Industrial Practice （『飞桨』核心框架，深度学习&amp;机器学习高性能单机、分布式训练和跨平台部署）</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**24036**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/PaddlePaddle/Paddle)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：PArallel Distributed Deep LEarning: Machine Learning Framework from Industrial Practice （『飞桨』核心框架，深度学习&amp;机器学习高性能单机、分布式训练和跨平台部署） 可通过原始链接查看完整项目、论文或数据说明。

</details>

</details>

### Kuaishou（2）

<details>
<summary><img src="https://github.com/KlingAIResearch.png?size=160" width="32" height="32" alt="Kling AI Research logo"> &nbsp;<strong>Kling AI Research</strong> · <code>verified</code></summary>

<br>

Kling AI Research 隶属于 Kuaishou，是一支主要关注视频生成、图像生成、计算机视觉的基础模型团队。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** Kuaishou
- **主要方向：** 视频生成、图像生成、计算机视觉
- **负责人：** [负责人/成员页](https://klingai.com/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [GitHub](https://github.com/KlingAIResearch) · [官网](https://klingai.com/)

#### 最近工作 · 2025

<details>
<summary><strong>3. Improving Video Generation with Human Feedback</strong> · arXiv (Cornell University) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Improving+Video+Generation+with+Human+Feedback%22)（未缓存未经核验的数字）
- GitHub Stars：**488**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2501.13918)

**基于 Abstract 的 TL;DR**

该研究旨在解决视频生成中不平滑运动和视频与指示的不匹配问题。通过构建大规模的人类偏好数据集和引入VideoReward模型，研究人员开发了一种系统 pipelines， harnessing human feedback 来优化视频生成模型。实验结果表明，VideoReward显著高于现有奖励模型，而Flow-DPO在训练时间策略中表现出更好的性能。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2501.13918"><img src="https://ar5iv.labs.arxiv.org/html/2501.13918/assets/x1.png" alt="Figure 1: Overview of Our Video Alignment Paradigm. (a) Human Preference Annotation  (Sec.  3.1 ). We construct a dataset of 182k (prompt, video A, video B) triplets, collecting preference annotations on Visual Quality (VQ), Motion Quality (MQ), and Text Alignment (TA) from human evaluators. (b) Reward Mode Training  (Sec.  3.2 ). We train a VLM-based reward model using the Bradley-Terry-Model-with-Ties formulation. (c) Video Alignment  (Sec.  4 ). We adapt alignment techniques — DPO, RWR, and reward guidance — to flow-based video generation models and provide a comprehensive comparison of their effectiveness." width="720"></a>

> Figure 1: Overview of Our Video Alignment Paradigm. (a) Human Preference Annotation  (Sec.  3.1 ). We construct a dataset of 182k (prompt, video A, video B) triplets, collecting preference annotations on Visual Quality (VQ), Motion Quality (MQ), and Text Alignment (TA) from human evaluators. (b) Reward Mode Training  (Sec.  3.2 ). We train a VLM-based reward model using the Bradley-Terry-Model-with-Ties formulation. (c) Video Alignment  (Sec.  4 ). We adapt alignment techniques — DPO, RWR, and reward guidance — to flow-based video generation models and provide a comprehensive comparison of their effectiveness.
> 来源：[原论文](https://arxiv.org/abs/2501.13918)

</details>

#### 代表作

<details>
<summary><strong>1. [ICLR 2026] UniVideo: Unified Understanding, Generation, and Editing for Videos</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**543**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/KlingAIResearch/UniVideo)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：[ICLR 2026] UniVideo: Unified Understanding, Generation, and Editing for Videos 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>2. GameFactory: Creating New Games with Generative Interactive Videos</strong> · arXiv (Cornell University) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22GameFactory%3A+Creating+New+Games+with+Generative+Interactive+Videos%22)（未缓存未经核验的数字）
- GitHub Stars：**493**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2501.08325)

**基于 Abstract 的 TL;DR**

该研究提出GameFactory框架，用于生成动态控制的场景通用游戏视频。通过引入GF-Minecraft数据集和精确控制模块，GameFactory解决了动作控制的关键问题，并实现了无限长度的自回归生成。该框架利用预训练视频 diffuser 模型的开放域先验，推广了场景通用动作控制，实现了游戏生成的重要突破。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2501.08325"><img src="https://ar5iv.labs.arxiv.org/html/2501.08325/assets/x6.png" alt="Figure 5 : Phase #0 : pretraining a video generation model on open-domain data. Phase #1 : finetuning with LoRA for game video data. Phase #2 : training the action control module while fixing other parameters. Phase #3 : inference for action-controlled open-domain generation. To decouple style learning from action control, Phase #1 learns game-specific style while Phase #2 focuses on style-independent action control. This design preserves the open-domain capabilities from Phase #0 , enabling generalization in Phase #3 ." width="720"></a>

> Figure 5 : Phase #0 : pretraining a video generation model on open-domain data. Phase #1 : finetuning with LoRA for game video data. Phase #2 : training the action control module while fixing other parameters. Phase #3 : inference for action-controlled open-domain generation. To decouple style learning from action control, Phase #1 learns game-specific style while Phase #2 focuses on style-independent action control. This design preserves the open-domain capabilities from Phase #0 , enabling generalization in Phase #3 .
> 来源：[原论文](https://arxiv.org/abs/2501.08325)

</details>

<details>
<summary><strong>3. Improving Video Generation with Human Feedback</strong> · arXiv (Cornell University) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Improving+Video+Generation+with+Human+Feedback%22)（未缓存未经核验的数字）
- GitHub Stars：**488**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2501.13918)

**基于 Abstract 的 TL;DR**

该研究旨在解决视频生成中不平滑运动和视频与指示的不匹配问题。通过构建大规模的人类偏好数据集和引入VideoReward模型，研究人员开发了一种系统 pipelines， harnessing human feedback 来优化视频生成模型。实验结果表明，VideoReward显著高于现有奖励模型，而Flow-DPO在训练时间策略中表现出更好的性能。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2501.13918"><img src="https://ar5iv.labs.arxiv.org/html/2501.13918/assets/x1.png" alt="Figure 1: Overview of Our Video Alignment Paradigm. (a) Human Preference Annotation  (Sec.  3.1 ). We construct a dataset of 182k (prompt, video A, video B) triplets, collecting preference annotations on Visual Quality (VQ), Motion Quality (MQ), and Text Alignment (TA) from human evaluators. (b) Reward Mode Training  (Sec.  3.2 ). We train a VLM-based reward model using the Bradley-Terry-Model-with-Ties formulation. (c) Video Alignment  (Sec.  4 ). We adapt alignment techniques — DPO, RWR, and reward guidance — to flow-based video generation models and provide a comprehensive comparison of their effectiveness." width="720"></a>

> Figure 1: Overview of Our Video Alignment Paradigm. (a) Human Preference Annotation  (Sec.  3.1 ). We construct a dataset of 182k (prompt, video A, video B) triplets, collecting preference annotations on Visual Quality (VQ), Motion Quality (MQ), and Text Alignment (TA) from human evaluators. (b) Reward Mode Training  (Sec.  3.2 ). We train a VLM-based reward model using the Bradley-Terry-Model-with-Ties formulation. (c) Video Alignment  (Sec.  4 ). We adapt alignment techniques — DPO, RWR, and reward guidance — to flow-based video generation models and provide a comprehensive comparison of their effectiveness.
> 来源：[原论文](https://arxiv.org/abs/2501.13918)

</details>

</details>

<details>
<summary><img src="https://github.com/Kwai-Kolors.png?size=160" width="32" height="32" alt="Kuaishou Kolors Team logo"> &nbsp;<strong>Kuaishou Kolors Team</strong> · <code>provisional</code></summary>

<br>

Kuaishou Kolors Team 隶属于 Kuaishou，是一支主要关注图像生成、可控生成的基础模型团队。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** Kuaishou
- **主要方向：** 图像生成、可控生成
- **负责人：** [负责人/成员页](https://github.com/Kwai-Kolors) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [GitHub](https://github.com/Kwai-Kolors)

#### 最近工作 · 2026

<details>
<summary><strong>1. ResTok: Learning Hierarchical Residuals in 1D Visual Tokenizers for Autoregressive Image Generation</strong> · arXiv (Cornell University) · 2026</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22ResTok%3A+Learning+Hierarchical+Residuals+in+1D+Visual+Tokenizers+for+Autoregressive+Image+Generation%22)（未缓存未经核验的数字）
- GitHub Stars：**6**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2601.03955)

**基于 Abstract 的 TL;DR**

现有的1D视觉token化器主要遵循语言模型的设计原则，忽略了视觉数据的多层次性和残差网络设计。该研究提出了Residual Tokenizer（ResTok），一个可以建造多层级残差的1D视觉token化器，能够有效地增强表示能力并减少信息重叠。通过引入多层级AR生成器，ResTok显著提高了视觉图像生成的效率和质量。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2601.03955"><img src="https://ar5iv.labs.arxiv.org/html/2601.03955/assets/x3.png" alt="Figure 2 : Overview of ResTok. (a) Pipeline of encoding and decoding processes. There are S − 1 S-1 residual merging blocks uniformly replacing the original transformer blocks in the encoder, where S S denotes the number of scales. (b) Residual 1D latent token initialization. When increasing the target size of pooling, we first double the width, and then alternately double the height and width in subsequent steps. (c) Residual merging block. Average pooling is used as the merging method in our experiments." width="720"></a>

> Figure 2 : Overview of ResTok. (a) Pipeline of encoding and decoding processes. There are S − 1 S-1 residual merging blocks uniformly replacing the original transformer blocks in the encoder, where S S denotes the number of scales. (b) Residual 1D latent token initialization. When increasing the target size of pooling, we first double the width, and then alternately double the height and width in subsequent steps. (c) Residual merging block. Average pooling is used as the merging method in our experiments.
> 来源：[原论文](https://arxiv.org/abs/2601.03955)

</details>

#### 代表作

<details>
<summary><strong>1. ResTok: Learning Hierarchical Residuals in 1D Visual Tokenizers for Autoregressive Image Generation</strong> · arXiv (Cornell University) · 2026</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22ResTok%3A+Learning+Hierarchical+Residuals+in+1D+Visual+Tokenizers+for+Autoregressive+Image+Generation%22)（未缓存未经核验的数字）
- GitHub Stars：**6**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2601.03955)

**基于 Abstract 的 TL;DR**

现有的1D视觉token化器主要遵循语言模型的设计原则，忽略了视觉数据的多层次性和残差网络设计。该研究提出了Residual Tokenizer（ResTok），一个可以建造多层级残差的1D视觉token化器，能够有效地增强表示能力并减少信息重叠。通过引入多层级AR生成器，ResTok显著提高了视觉图像生成的效率和质量。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2601.03955"><img src="https://ar5iv.labs.arxiv.org/html/2601.03955/assets/x3.png" alt="Figure 2 : Overview of ResTok. (a) Pipeline of encoding and decoding processes. There are S − 1 S-1 residual merging blocks uniformly replacing the original transformer blocks in the encoder, where S S denotes the number of scales. (b) Residual 1D latent token initialization. When increasing the target size of pooling, we first double the width, and then alternately double the height and width in subsequent steps. (c) Residual merging block. Average pooling is used as the merging method in our experiments." width="720"></a>

> Figure 2 : Overview of ResTok. (a) Pipeline of encoding and decoding processes. There are S − 1 S-1 residual merging blocks uniformly replacing the original transformer blocks in the encoder, where S S denotes the number of scales. (b) Residual 1D latent token initialization. When increasing the target size of pooling, we first double the width, and then alternately double the height and width in subsequent steps. (c) Residual merging block. Average pooling is used as the merging method in our experiments.
> 来源：[原论文](https://arxiv.org/abs/2601.03955)

</details>

<details>
<summary><strong>2. Kolors Team</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**4609**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/Kwai-Kolors/Kolors)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：Kolors Team 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>3. A Style is Worth One Code: Unlocking Code-to-Style Image Generation with Discrete Style Space</strong> · arXiv (Cornell University) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22A+Style+is+Worth+One+Code%3A+Unlocking+Code-to-Style+Image+Generation+with+Discrete+Style+Space%22)（未缓存未经核验的数字）
- GitHub Stars：**221**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2511.10555)

**基于 Abstract 的 TL;DR**

该研究提出了一种新颖的任务——code-to-style image generation，旨在生成具有 novel 和consistent visual styles 的图像，只需输入一个数字样式码。该方法 CoTyle 是第一种开源方法，通过训练一个样式码书和使用文本-图像 diffuser 模型（T2I-DM）来实现。实验结果表明，该方法能够有效地将一个数字样式码转换为一个样式控制器，证明了样式值得以一个代码。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2511.10555"><img src="https://ar5iv.labs.arxiv.org/html/2511.10555/assets/x2.png" alt="Figure 2 : Overview of CoTyle . (a) We first train a style codebook and an image generation model conditioned on style images. (b) Then, we use the corresponding codebook indices of the style images to train an autoregressive style generator. (c) During inference, a style code is used to randomly sample the first index and autoregressively predict the rest." width="720"></a>

> Figure 2 : Overview of CoTyle . (a) We first train a style codebook and an image generation model conditioned on style images. (b) Then, we use the corresponding codebook indices of the style images to train an autoregressive style generator. (c) During inference, a style code is used to randomly sample the first index and autoregressively predict the rest.
> 来源：[原论文](https://arxiv.org/abs/2511.10555)

</details>

</details>

### Meituan（1）

<details>
<summary><img src="https://github.com/meituan-longcat.png?size=160" width="32" height="32" alt="Meituan LongCat Team logo"> &nbsp;<strong>Meituan LongCat Team</strong> · <code>verified</code></summary>

<br>

Meituan LongCat Team 隶属于 Meituan，是一支主要关注大语言模型、智能体、多模态学习的基础模型团队。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** Meituan
- **主要方向：** 大语言模型、智能体、多模态学习
- **负责人：** [负责人/成员页](https://longcat.chat/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [GitHub](https://github.com/meituan-longcat) · [官网](https://longcat.chat/)

#### 最近工作 · 2025

<details>
<summary><strong>3. R-Horizon: How Far Can Your Large Reasoning Model Really Go in Breadth and Depth?</strong> · arXiv (Cornell University) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22R-Horizon%3A+How+Far+Can+Your+Large+Reasoning+Model+Really+Go+in+Breadth+and+Depth%3F%22)（未缓存未经核验的数字）
- GitHub Stars：**27**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2510.08189)

**基于 Abstract 的 TL;DR**

研究者提出R-HORIZON方法，旨在评估大型推理模型（LRM）的长时程推理能力。通过构建长时程推理benchmark和RLVR训练，发现LRM在多步骤的复杂问题中表现出明显的性能下降，并且难以分配思考预算。R-HORIZON方法能够提高LRM在多时程推理任务上的性能，并且在标准推理任务上也取得了改进。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2510.08189"><img src="https://ar5iv.labs.arxiv.org/html/2510.08189/assets/x11.png" alt="Figure 11: Training dynamics comparison across different training data compositions (n=1, n=2, n=4) showing response length, training time per step, and entropy loss evolution during the RL training process." width="720"></a>

> Figure 11: Training dynamics comparison across different training data compositions (n=1, n=2, n=4) showing response length, training time per step, and entropy loss evolution during the RL training process.
> 来源：[原论文](https://arxiv.org/abs/2510.08189)

</details>

#### 代表作

<details>
<summary><strong>1. [ICLR 2026] VitaBench: Benchmarking LLM Agents with Versatile Interactive Tasks in Real-world Applications</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**161**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/meituan-longcat/vitabench)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：[ICLR 2026] VitaBench: Benchmarking LLM Agents with Versatile Interactive Tasks in Real-world Applications 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>2. Omni Model Benchmark with high quality and diversity, which reveals the Compositional Law. We’re now focused on Chinese scenarios — and actively seeking partners to co-build English &amp; multilingual versions! Let’s expand global impact together.</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**78**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/meituan-longcat/UNO-Bench)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：Omni Model Benchmark with high quality and diversity, which reveals the Compositional Law. We’re now focused on Chinese scenarios — and actively seeking partners to co-build English &amp; multilingual versions! Let’s expand global impact together. 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>3. R-Horizon: How Far Can Your Large Reasoning Model Really Go in Breadth and Depth?</strong> · arXiv (Cornell University) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22R-Horizon%3A+How+Far+Can+Your+Large+Reasoning+Model+Really+Go+in+Breadth+and+Depth%3F%22)（未缓存未经核验的数字）
- GitHub Stars：**27**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2510.08189)

**基于 Abstract 的 TL;DR**

研究者提出R-HORIZON方法，旨在评估大型推理模型（LRM）的长时程推理能力。通过构建长时程推理benchmark和RLVR训练，发现LRM在多步骤的复杂问题中表现出明显的性能下降，并且难以分配思考预算。R-HORIZON方法能够提高LRM在多时程推理任务上的性能，并且在标准推理任务上也取得了改进。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2510.08189"><img src="https://ar5iv.labs.arxiv.org/html/2510.08189/assets/x11.png" alt="Figure 11: Training dynamics comparison across different training data compositions (n=1, n=2, n=4) showing response length, training time per step, and entropy loss evolution during the RL training process." width="720"></a>

> Figure 11: Training dynamics comparison across different training data compositions (n=1, n=2, n=4) showing response length, training time per step, and entropy loss evolution during the RL training process.
> 来源：[原论文](https://arxiv.org/abs/2510.08189)

</details>

</details>

### JD.com（5）

<details>
<summary><img src="https://github.com/jd-opensource.png?size=160" width="32" height="32" alt="JD Explore Academy — Multimodal LLM logo"> &nbsp;<strong>JD Explore Academy — Multimodal LLM</strong> · <code>verified</code></summary>

<br>

JD Explore Academy — Multimodal LLM 隶属于 JD.com，是一支主要关注大语言模型、多模态学习、图像生成的企业研究团队。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** JD.com
- **主要方向：** 大语言模型、多模态学习、图像生成
- **负责人：** [负责人/成员页](https://research.joyai.com/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://research.joyai.com/) · [GitHub](https://github.com/jd-opensource)

#### 最近工作 · 2026

<details>
<summary><strong>1. OxyGent: Making Multi-Agent Systems Modular, Observable, and Evolvable via Oxy Abstraction</strong> · arXiv (Cornell University) · 2026</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22OxyGent%3A+Making+Multi-Agent+Systems+Modular%2C+Observable%2C+and+Evolvable+via+Oxy+Abstraction%22)（未缓存未经核验的数字）
- GitHub Stars：**2022**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2604.25602)

**基于 Abstract 的 TL;DR**

研究问题是如何在复杂的工业环境中部署可生产化的多-agent系统。该研究提出了OxyGent框架，利用统一的氧气抽象和氧气银行演化引擎来解决这些挑战。结果表明，OxyGent提供了一个可靠且可扩展的基础设施，适用于复杂的工业环境。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2604.25602"><img src="https://ar5iv.labs.arxiv.org/html/2604.25602/assets/img/oxy_monitor.png" alt="Figure 5: MAS inference monitoring. OxyGent has built-in production-grade time tracking, which displays task distribution and resource congestion in real time, facilitating MAS architecture optimization. More features are introduced in Appendix  A.1 ." width="720"></a>

> Figure 5: MAS inference monitoring. OxyGent has built-in production-grade time tracking, which displays task distribution and resource congestion in real time, facilitating MAS architecture optimization. More features are introduced in Appendix  A.1 .
> 来源：[原论文](https://arxiv.org/abs/2604.25602)

</details>

#### 代表作

<details>
<summary><strong>1. OxyGent: Making Multi-Agent Systems Modular, Observable, and Evolvable via Oxy Abstraction</strong> · arXiv (Cornell University) · 2026</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22OxyGent%3A+Making+Multi-Agent+Systems+Modular%2C+Observable%2C+and+Evolvable+via+Oxy+Abstraction%22)（未缓存未经核验的数字）
- GitHub Stars：**2022**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2604.25602)

**基于 Abstract 的 TL;DR**

研究问题是如何在复杂的工业环境中部署可生产化的多-agent系统。该研究提出了OxyGent框架，利用统一的氧气抽象和氧气银行演化引擎来解决这些挑战。结果表明，OxyGent提供了一个可靠且可扩展的基础设施，适用于复杂的工业环境。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2604.25602"><img src="https://ar5iv.labs.arxiv.org/html/2604.25602/assets/img/oxy_monitor.png" alt="Figure 5: MAS inference monitoring. OxyGent has built-in production-grade time tracking, which displays task distribution and resource congestion in real time, facilitating MAS architecture optimization. More features are introduced in Appendix  A.1 ." width="720"></a>

> Figure 5: MAS inference monitoring. OxyGent has built-in production-grade time tracking, which displays task distribution and resource congestion in real time, facilitating MAS architecture optimization. More features are introduced in Appendix  A.1 .
> 来源：[原论文](https://arxiv.org/abs/2604.25602)

</details>

<details>
<summary><strong>2. OxyGent: Making Multi-Agent Systems Modular, Observable, and Evolvable via Oxy Abstraction</strong> · Proceedings of the 64th Annual Meeting of the Association for Computational Linguistics (Volume 3: System Demonstrations) · 2026</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22OxyGent%3A+Making+Multi-Agent+Systems+Modular%2C+Observable%2C+and+Evolvable+via+Oxy+Abstraction%22)（未缓存未经核验的数字）
- GitHub Stars：**105**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://doi.org/10.18653/v1/2026.acl-demo.58)

**基于 Abstract 的 TL;DR**

研究问题是如何在复杂的工业环境中部署可生产-ready 的多-agent系统（MAS），面临着 Scalability、观察性和自我演化的限制。该论文提出了OxyGent框架，利用两大核心创新：统一的氧气抽象和氧气银行演化引擎。该框架通过可插拔的原子组件来实现系统的可扩展性和监控，并提供动态规划和AI资产管理平台来增强观察性和自我演化。实验结果表明，OxyGent为MAS提供了一个稳健和可扩展的基础。

</details>

<details>
<summary><strong>3. A large-scale dataset for face parsing (AAAI2020)</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**312**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/jd-opensource/lapa-dataset)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：A large-scale dataset for face parsing (AAAI2020) 可通过原始链接查看完整项目、论文或数据说明。

</details>

</details>

<details>
<summary><img src="https://github.com/jd-opensource.png?size=160" width="32" height="32" alt="JD Explore Academy — Speech &amp; Acoustics logo"> &nbsp;<strong>JD Explore Academy — Speech &amp; Acoustics</strong> · <code>provisional</code></summary>

<br>

JD Explore Academy — Speech & Acoustics 隶属于 JD.com，是一支主要关注语音技术、音频生成、多模态学习的企业研究团队。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** JD.com
- **主要方向：** 语音技术、音频生成、多模态学习
- **负责人：** [负责人/成员页](https://research.joyai.com/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://research.joyai.com/) · [GitHub](https://github.com/jd-opensource)

#### 最近工作 · 2026

<details>
<summary><strong>1. OxyGent: Making Multi-Agent Systems Modular, Observable, and Evolvable via Oxy Abstraction</strong> · arXiv (Cornell University) · 2026</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22OxyGent%3A+Making+Multi-Agent+Systems+Modular%2C+Observable%2C+and+Evolvable+via+Oxy+Abstraction%22)（未缓存未经核验的数字）
- GitHub Stars：**2022**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2604.25602)

**基于 Abstract 的 TL;DR**

研究问题是如何在复杂的工业环境中部署可生产化的多-agent系统（MAS）。该研究提出了OxyGent框架，利用统一的氧气抽象和氧气银行演化引擎。结果表明，OxyGent提供了一个可靠且可扩展的基础设施，使 MAS能够在复杂环境中高效运行。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2604.25602"><img src="https://ar5iv.labs.arxiv.org/html/2604.25602/assets/img/oxy_monitor.png" alt="Figure 5: MAS inference monitoring. OxyGent has built-in production-grade time tracking, which displays task distribution and resource congestion in real time, facilitating MAS architecture optimization. More features are introduced in Appendix  A.1 ." width="720"></a>

> Figure 5: MAS inference monitoring. OxyGent has built-in production-grade time tracking, which displays task distribution and resource congestion in real time, facilitating MAS architecture optimization. More features are introduced in Appendix  A.1 .
> 来源：[原论文](https://arxiv.org/abs/2604.25602)

</details>

#### 代表作

<details>
<summary><strong>1. OxyGent: Making Multi-Agent Systems Modular, Observable, and Evolvable via Oxy Abstraction</strong> · arXiv (Cornell University) · 2026</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22OxyGent%3A+Making+Multi-Agent+Systems+Modular%2C+Observable%2C+and+Evolvable+via+Oxy+Abstraction%22)（未缓存未经核验的数字）
- GitHub Stars：**2022**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2604.25602)

**基于 Abstract 的 TL;DR**

研究问题是如何在复杂的工业环境中部署可生产化的多-agent系统（MAS）。该研究提出了OxyGent框架，利用统一的氧气抽象和氧气银行演化引擎。结果表明，OxyGent提供了一个可靠且可扩展的基础设施，使 MAS能够在复杂环境中高效运行。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2604.25602"><img src="https://ar5iv.labs.arxiv.org/html/2604.25602/assets/img/oxy_monitor.png" alt="Figure 5: MAS inference monitoring. OxyGent has built-in production-grade time tracking, which displays task distribution and resource congestion in real time, facilitating MAS architecture optimization. More features are introduced in Appendix  A.1 ." width="720"></a>

> Figure 5: MAS inference monitoring. OxyGent has built-in production-grade time tracking, which displays task distribution and resource congestion in real time, facilitating MAS architecture optimization. More features are introduced in Appendix  A.1 .
> 来源：[原论文](https://arxiv.org/abs/2604.25602)

</details>

<details>
<summary><strong>2. OxyGent: Making Multi-Agent Systems Modular, Observable, and Evolvable via Oxy Abstraction</strong> · Proceedings of the 64th Annual Meeting of the Association for Computational Linguistics (Volume 3: System Demonstrations) · 2026</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22OxyGent%3A+Making+Multi-Agent+Systems+Modular%2C+Observable%2C+and+Evolvable+via+Oxy+Abstraction%22)（未缓存未经核验的数字）
- GitHub Stars：**105**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://doi.org/10.18653/v1/2026.acl-demo.58)

**基于 Abstract 的 TL;DR**

研究问题是如何在复杂的工业环境中部署可生产化的多-agent系统（MAS）。该研究提出了OxyGent框架，利用统一的氧气抽象和氧气银行演化引擎。OxyGent提供了可扩展、监控和自适应视觉化的能力，同时支持持续演化。实验结果表明，OxyGent为MAS提供了一种 Robust 和 Scalable 的基础。

</details>

<details>
<summary><strong>3. A large-scale dataset for face parsing (AAAI2020)</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**312**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/jd-opensource/lapa-dataset)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：A large-scale dataset for face parsing (AAAI2020) 可通过原始链接查看完整项目、论文或数据说明。

</details>

</details>

<details>
<summary><img src="https://github.com/jd-opensource.png?size=160" width="32" height="32" alt="JD Explore Academy — Multimodal Interaction &amp; World Model logo"> &nbsp;<strong>JD Explore Academy — Multimodal Interaction &amp; World Model</strong> · <code>provisional</code></summary>

<br>

JD Explore Academy — Multimodal Interaction & World Model 隶属于 JD.com，是一支主要关注多模态学习、世界模型、交互式智能体的企业研究团队。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** JD.com
- **主要方向：** 多模态学习、世界模型、交互式智能体
- **负责人：** [负责人/成员页](https://research.joyai.com/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://research.joyai.com/) · [GitHub](https://github.com/jd-opensource)

#### 最近工作 · 2026

<details>
<summary><strong>1. OxyGent: Making Multi-Agent Systems Modular, Observable, and Evolvable via Oxy Abstraction</strong> · arXiv (Cornell University) · 2026</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22OxyGent%3A+Making+Multi-Agent+Systems+Modular%2C+Observable%2C+and+Evolvable+via+Oxy+Abstraction%22)（未缓存未经核验的数字）
- GitHub Stars：**2022**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2604.25602)

**基于 Abstract 的 TL;DR**

研究问题是如何在复杂的工业环境中部署可生产化的多-agent系统。该研究提出了OxyGent框架，利用统一的氧气抽象和氧气银行演化引擎来解决这些挑战。结果表明，OxyGent提供了一个可靠且可扩展的基础设施，适用于多_agent系统的开发。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2604.25602"><img src="https://ar5iv.labs.arxiv.org/html/2604.25602/assets/img/oxy_monitor.png" alt="Figure 5: MAS inference monitoring. OxyGent has built-in production-grade time tracking, which displays task distribution and resource congestion in real time, facilitating MAS architecture optimization. More features are introduced in Appendix  A.1 ." width="720"></a>

> Figure 5: MAS inference monitoring. OxyGent has built-in production-grade time tracking, which displays task distribution and resource congestion in real time, facilitating MAS architecture optimization. More features are introduced in Appendix  A.1 .
> 来源：[原论文](https://arxiv.org/abs/2604.25602)

</details>

#### 代表作

<details>
<summary><strong>1. OxyGent: Making Multi-Agent Systems Modular, Observable, and Evolvable via Oxy Abstraction</strong> · arXiv (Cornell University) · 2026</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22OxyGent%3A+Making+Multi-Agent+Systems+Modular%2C+Observable%2C+and+Evolvable+via+Oxy+Abstraction%22)（未缓存未经核验的数字）
- GitHub Stars：**2022**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2604.25602)

**基于 Abstract 的 TL;DR**

研究问题是如何在复杂的工业环境中部署可生产化的多-agent系统。该研究提出了OxyGent框架，利用统一的氧气抽象和氧气银行演化引擎来解决这些挑战。结果表明，OxyGent提供了一个可靠且可扩展的基础设施，适用于多_agent系统的开发。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2604.25602"><img src="https://ar5iv.labs.arxiv.org/html/2604.25602/assets/img/oxy_monitor.png" alt="Figure 5: MAS inference monitoring. OxyGent has built-in production-grade time tracking, which displays task distribution and resource congestion in real time, facilitating MAS architecture optimization. More features are introduced in Appendix  A.1 ." width="720"></a>

> Figure 5: MAS inference monitoring. OxyGent has built-in production-grade time tracking, which displays task distribution and resource congestion in real time, facilitating MAS architecture optimization. More features are introduced in Appendix  A.1 .
> 来源：[原论文](https://arxiv.org/abs/2604.25602)

</details>

<details>
<summary><strong>2. OxyGent: Making Multi-Agent Systems Modular, Observable, and Evolvable via Oxy Abstraction</strong> · Proceedings of the 64th Annual Meeting of the Association for Computational Linguistics (Volume 3: System Demonstrations) · 2026</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22OxyGent%3A+Making+Multi-Agent+Systems+Modular%2C+Observable%2C+and+Evolvable+via+Oxy+Abstraction%22)（未缓存未经核验的数字）
- GitHub Stars：**105**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://doi.org/10.18653/v1/2026.acl-demo.58)

**基于 Abstract 的 TL;DR**

研究问题是如何在复杂的工业环境中部署可生产化的多-agent系统（MAS）。该论文提出了OxyGent开源框架，采用统一的Oxy抽象和Oxy-Bank演化引擎。OxyGent能够实现可扩展、监控和自我更新的MAS。

</details>

<details>
<summary><strong>3. A large-scale dataset for face parsing (AAAI2020)</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**312**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/jd-opensource/lapa-dataset)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：A large-scale dataset for face parsing (AAAI2020) 可通过原始链接查看完整项目、论文或数据说明。

</details>

</details>

<details>
<summary><img src="https://github.com/jd-opensource.png?size=160" width="32" height="32" alt="JD Explore Academy — Embodied AI logo"> &nbsp;<strong>JD Explore Academy — Embodied AI</strong> · <code>verified</code></summary>

<br>

JD Explore Academy — Embodied AI 隶属于 JD.com，是一支主要关注具身智能、机器人、世界模型的企业研究团队。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** JD.com
- **主要方向：** 具身智能、机器人、世界模型
- **负责人：** [负责人/成员页](https://research.joyai.com/team/embodied-ai) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://research.joyai.com/team/embodied-ai) · [GitHub](https://github.com/jd-opensource)

#### 最近工作 · 2026

<details>
<summary><strong>1. OxyGent: Making Multi-Agent Systems Modular, Observable, and Evolvable via Oxy Abstraction</strong> · arXiv (Cornell University) · 2026</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22OxyGent%3A+Making+Multi-Agent+Systems+Modular%2C+Observable%2C+and+Evolvable+via+Oxy+Abstraction%22)（未缓存未经核验的数字）
- GitHub Stars：**2022**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2604.25602)

**基于 Abstract 的 TL;DR**

研究问题是如何在复杂的工业环境中部署可生产化的多-agent系统（MAS）。该研究提出了OxyGent框架，利用统一的氧气抽象和氧气银行演化引擎。结果表明，OxyGent提供了一个可靠且可扩展的基础设施，适用于MAS的部署。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2604.25602"><img src="https://ar5iv.labs.arxiv.org/html/2604.25602/assets/img/oxy_monitor.png" alt="Figure 5: MAS inference monitoring. OxyGent has built-in production-grade time tracking, which displays task distribution and resource congestion in real time, facilitating MAS architecture optimization. More features are introduced in Appendix  A.1 ." width="720"></a>

> Figure 5: MAS inference monitoring. OxyGent has built-in production-grade time tracking, which displays task distribution and resource congestion in real time, facilitating MAS architecture optimization. More features are introduced in Appendix  A.1 .
> 来源：[原论文](https://arxiv.org/abs/2604.25602)

</details>

#### 代表作

<details>
<summary><strong>1. OxyGent: Making Multi-Agent Systems Modular, Observable, and Evolvable via Oxy Abstraction</strong> · arXiv (Cornell University) · 2026</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22OxyGent%3A+Making+Multi-Agent+Systems+Modular%2C+Observable%2C+and+Evolvable+via+Oxy+Abstraction%22)（未缓存未经核验的数字）
- GitHub Stars：**2022**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2604.25602)

**基于 Abstract 的 TL;DR**

研究问题是如何在复杂的工业环境中部署可生产化的多-agent系统（MAS）。该研究提出了OxyGent框架，利用统一的氧气抽象和氧气银行演化引擎。结果表明，OxyGent提供了一个可靠且可扩展的基础设施，适用于MAS的部署。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2604.25602"><img src="https://ar5iv.labs.arxiv.org/html/2604.25602/assets/img/oxy_monitor.png" alt="Figure 5: MAS inference monitoring. OxyGent has built-in production-grade time tracking, which displays task distribution and resource congestion in real time, facilitating MAS architecture optimization. More features are introduced in Appendix  A.1 ." width="720"></a>

> Figure 5: MAS inference monitoring. OxyGent has built-in production-grade time tracking, which displays task distribution and resource congestion in real time, facilitating MAS architecture optimization. More features are introduced in Appendix  A.1 .
> 来源：[原论文](https://arxiv.org/abs/2604.25602)

</details>

<details>
<summary><strong>2. OxyGent: Making Multi-Agent Systems Modular, Observable, and Evolvable via Oxy Abstraction</strong> · Proceedings of the 64th Annual Meeting of the Association for Computational Linguistics (Volume 3: System Demonstrations) · 2026</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22OxyGent%3A+Making+Multi-Agent+Systems+Modular%2C+Observable%2C+and+Evolvable+via+Oxy+Abstraction%22)（未缓存未经核验的数字）
- GitHub Stars：**105**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://doi.org/10.18653/v1/2026.acl-demo.58)

**基于 Abstract 的 TL;DR**

研究问题在部署生产-ready多-agent系统（MAS）时，面临的挑战包括可扩展性、观察性和自主演化。该论文提出了OxyGent开源框架，通过统一抽象和Oxy-Bank演化引擎实现了 MAS 的设计和演化。实验结果表明，OxyGent 提供了一种 Robust 和 Scalable 的基础框架。

</details>

<details>
<summary><strong>3. A large-scale dataset for face parsing (AAAI2020)</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**312**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/jd-opensource/lapa-dataset)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：A large-scale dataset for face parsing (AAAI2020) 可通过原始链接查看完整项目、论文或数据说明。

</details>

</details>

<details>
<summary><img src="https://github.com/jd-opensource.png?size=160" width="32" height="32" alt="JD Explore Academy — Infrastructures logo"> &nbsp;<strong>JD Explore Academy — Infrastructures</strong> · <code>provisional</code></summary>

<br>

JD Explore Academy — Infrastructures 隶属于 JD.com，是一支主要关注AI 系统、分布式训练、模型推理的企业研究团队。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** JD.com
- **主要方向：** AI 系统、分布式训练、模型推理
- **负责人：** [负责人/成员页](https://research.joyai.com/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://research.joyai.com/) · [GitHub](https://github.com/jd-opensource)

#### 最近工作 · 2026

<details>
<summary><strong>1. OxyGent: Making Multi-Agent Systems Modular, Observable, and Evolvable via Oxy Abstraction</strong> · arXiv (Cornell University) · 2026</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22OxyGent%3A+Making+Multi-Agent+Systems+Modular%2C+Observable%2C+and+Evolvable+via+Oxy+Abstraction%22)（未缓存未经核验的数字）
- GitHub Stars：**2022**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2604.25602)

**基于 Abstract 的 TL;DR**

研究问题是如何在复杂的工业环境中部署可生产化的多-agent系统（MAS）。该研究提出了OxyGent框架，利用统一的氧气抽象和氧气银行演化引擎。OxyGent提供了可扩展、监控和持续演化的能力，使其成为 MAS的 Robust 和 Scalable 基础。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2604.25602"><img src="https://ar5iv.labs.arxiv.org/html/2604.25602/assets/img/oxy_monitor.png" alt="Figure 5: MAS inference monitoring. OxyGent has built-in production-grade time tracking, which displays task distribution and resource congestion in real time, facilitating MAS architecture optimization. More features are introduced in Appendix  A.1 ." width="720"></a>

> Figure 5: MAS inference monitoring. OxyGent has built-in production-grade time tracking, which displays task distribution and resource congestion in real time, facilitating MAS architecture optimization. More features are introduced in Appendix  A.1 .
> 来源：[原论文](https://arxiv.org/abs/2604.25602)

</details>

#### 代表作

<details>
<summary><strong>1. OxyGent: Making Multi-Agent Systems Modular, Observable, and Evolvable via Oxy Abstraction</strong> · arXiv (Cornell University) · 2026</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22OxyGent%3A+Making+Multi-Agent+Systems+Modular%2C+Observable%2C+and+Evolvable+via+Oxy+Abstraction%22)（未缓存未经核验的数字）
- GitHub Stars：**2022**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2604.25602)

**基于 Abstract 的 TL;DR**

研究问题是如何在复杂的工业环境中部署可生产化的多-agent系统（MAS）。该研究提出了OxyGent框架，利用统一的氧气抽象和氧气银行演化引擎。OxyGent提供了可扩展、监控和持续演化的能力，使其成为 MAS的 Robust 和 Scalable 基础。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2604.25602"><img src="https://ar5iv.labs.arxiv.org/html/2604.25602/assets/img/oxy_monitor.png" alt="Figure 5: MAS inference monitoring. OxyGent has built-in production-grade time tracking, which displays task distribution and resource congestion in real time, facilitating MAS architecture optimization. More features are introduced in Appendix  A.1 ." width="720"></a>

> Figure 5: MAS inference monitoring. OxyGent has built-in production-grade time tracking, which displays task distribution and resource congestion in real time, facilitating MAS architecture optimization. More features are introduced in Appendix  A.1 .
> 来源：[原论文](https://arxiv.org/abs/2604.25602)

</details>

<details>
<summary><strong>2. OxyGent: Making Multi-Agent Systems Modular, Observable, and Evolvable via Oxy Abstraction</strong> · Proceedings of the 64th Annual Meeting of the Association for Computational Linguistics (Volume 3: System Demonstrations) · 2026</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22OxyGent%3A+Making+Multi-Agent+Systems+Modular%2C+Observable%2C+and+Evolvable+via+Oxy+Abstraction%22)（未缓存未经核验的数字）
- GitHub Stars：**105**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://doi.org/10.18653/v1/2026.acl-demo.58)

**基于 Abstract 的 TL;DR**

研究问题是如何在复杂工业环境中部署可生产化的多-agent系统（MAS）。该研究提出了OxyGent开源框架，利用统一的氧气抽象和氧气银行演化引擎。OxyGent提供了可扩展、监控和自适应视觉化的能力，同时支持持续演化。实验结果表明，OxyGent为MAS提供了一种 Robust 和 Scalable 的基础。

</details>

<details>
<summary><strong>3. A large-scale dataset for face parsing (AAAI2020)</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**312**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/jd-opensource/lapa-dataset)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：A large-scale dataset for face parsing (AAAI2020) 可通过原始链接查看完整项目、论文或数据说明。

</details>

</details>

### Ant Group（3）

<details>
<summary><img src="https://github.com/ant-research.png?size=160" width="32" height="32" alt="Ant Research — Interactive Artificial Intelligence Lab logo"> &nbsp;<strong>Ant Research — Interactive Artificial Intelligence Lab</strong> · <code>verified</code></summary>

<br>

Ant Research — Interactive Artificial Intelligence Lab 隶属于 Ant Group，是一支主要关注计算机视觉、多模态学习、内容生成等方向的企业研究实验室。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** Ant Group
- **主要方向：** 计算机视觉、多模态学习、内容生成、数字人
- **负责人：** [负责人/成员页](https://www.antresearch.com/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://www.antresearch.com/) · [GitHub](https://github.com/ant-research)

#### 最近工作 · 2025

<details>
<summary><strong>2. Edicho: Consistent Image Editing in the Wild</strong> · 2025 IEEE/CVF International Conference on Computer Vision (ICCV) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Edicho%3A+Consistent+Image+Editing+in+the+Wild%22)（未缓存未经核验的数字）
- GitHub Stars：**128**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://doi.org/10.1109/iccv51701.2025.01417)

**基于 Abstract 的 TL;DR**

研究问题是如何在实际场景中保持一致的编辑。Edicho提出了一个基于diffusion模型的无需训练的解决方案，利用明确的图像对应性来指导编辑。该方法结合了注意力操纵模块和精心调节的分类器-free guidance denoising策略，能够在不同环境下实现一致的跨图像编辑。

</details>

#### 代表作

<details>
<summary><strong>1. DreamLIP: Language-Image Pre-training with Long Captions</strong> · arXiv (Cornell University) · 2024</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22DreamLIP%3A+Language-Image+Pre-training+with+Long+Captions%22)（未缓存未经核验的数字）
- GitHub Stars：**138**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2403.17007)

**基于 Abstract 的 TL;DR**

研究者探讨了语言图像预训练中长描述的重要性，发现每个句子都可能描述图像的一部分。他们提出了一个动态采样子句并引入组合损失的方法，实现了对比学习框架下使用长描述的有效性。实验结果表明，这种方法DreamLIP在多种下游任务上表现出优越性，甚至在图像-文本检索和语义分割任务上与CLIP训练的400M对相匹配或超越。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2403.17007"><img src="https://ar5iv.labs.arxiv.org/html/2403.17007/assets/x1.png" alt="Figure 1 : The richness of an image’s content often necessitates long captions for adequate description, with each sentence likely conveying a fragment of the image’s entirety. Thanks to the long captions, our DreamLIP trained with 30M image-text pairs achieves on par or even better performance than CLIP trained with 400M pairs on the tasks of image-text retrieval, semantic segmentation, and image understanding in MLLM." width="720"></a>

> Figure 1 : The richness of an image’s content often necessitates long captions for adequate description, with each sentence likely conveying a fragment of the image’s entirety. Thanks to the long captions, our DreamLIP trained with 30M image-text pairs achieves on par or even better performance than CLIP trained with 400M pairs on the tasks of image-text retrieval, semantic segmentation, and image understanding in MLLM.
> 来源：[原论文](https://arxiv.org/abs/2403.17007)

</details>

<details>
<summary><strong>2. Edicho: Consistent Image Editing in the Wild</strong> · 2025 IEEE/CVF International Conference on Computer Vision (ICCV) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Edicho%3A+Consistent+Image+Editing+in+the+Wild%22)（未缓存未经核验的数字）
- GitHub Stars：**128**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://doi.org/10.1109/iccv51701.2025.01417)

**基于 Abstract 的 TL;DR**

研究问题是如何在实际场景中保持一致的编辑。Edicho提出了一个基于diffusion模型的无需训练的解决方案，利用明确的图像对应性来指导编辑。该方法结合了注意力操纵模块和精心调节的分类器-free guidance denoising策略，能够在不同环境下实现一致的跨图像编辑。

</details>

<details>
<summary><strong>3. PlanarSplatting: Accurate Planar Surface Reconstruction in 3 Minutes</strong> · arXiv (Cornell University) · 2024</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22PlanarSplatting%3A+Accurate+Planar+Surface+Reconstruction+in+3+Minutes%22)（未缓存未经核验的数字）
- GitHub Stars：**81**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2412.03451)

**基于 Abstract 的 TL;DR**

本 paper 提出了 PlanarSplatting，一个极快和精确的多视图室内图像重建方法。该方法利用 3D 平面作为主要目标，并开发了一个明确优化框架来将 3D 平面分割为 2.5D 深度和法向图。这种方法不依赖于 2D/3D 平面检测和匹配，以及平面重建的传统依赖关系。通过使用 CUDA 实现的计划 splatting 函数，该方法可以在 3 分钟内准确重建室内场景，并在大量场景上对 ScanNet 和 ScanNet++ 数据集进行量化评估，表明其优势。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2412.03451"><img src="https://ar5iv.labs.arxiv.org/html/2412.03451/assets/pic/pic_splattingFunc2.png" alt="Figure 4 : Illustration of the proposed plane splatting function. Naive Gaussian Splatting can not effectively approximate the boundary of our rectangular plane primitive (shown in black dashed border). In contrast, our proposed plane splatting function can approximate the boundary of the rectangle as the number of iterations increases, allowing our 3D planar primitives to better fit the surface of the scene." width="720"></a>

> Figure 4 : Illustration of the proposed plane splatting function. Naive Gaussian Splatting can not effectively approximate the boundary of our rectangular plane primitive (shown in black dashed border). In contrast, our proposed plane splatting function can approximate the boundary of the rectangle as the number of iterations increases, allowing our 3D planar primitives to better fit the surface of the scene.
> 来源：[原论文](https://arxiv.org/abs/2412.03451)

</details>

</details>

<details>
<summary><img src="https://github.com/inclusionAI.png?size=160" width="32" height="32" alt="InclusionAI logo"> &nbsp;<strong>InclusionAI</strong> · <code>verified</code></summary>

<br>

InclusionAI 隶属于 Ant Group，是一支主要关注基础模型、机器推理、智能体等方向的企业研究实验室。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** Ant Group
- **主要方向：** 基础模型、机器推理、智能体、多模态学习
- **负责人：** [负责人/成员页](https://www.inclusion-ai.org/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://www.inclusion-ai.org/) · [GitHub](https://github.com/inclusionAI)

#### 最近工作 · 2025

<details>
<summary><strong>1. TwinFlow: Realizing One-step Generation on Large Models with Self-adversarial Flows</strong> · arXiv (Cornell University) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22TwinFlow%3A+Realizing+One-step+Generation+on+Large+Models+with+Self-adversarial+Flows%22)（未缓存未经核验的数字）
- GitHub Stars：**537**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2512.05150)

**基于 Abstract 的 TL;DR**

研究者提出了TwinFlow框架，旨在提高大型多模态生成模型的效率。该方法通过简化传统的distillation和adversarial training过程，实现1步生成模型的训练，从而降低计算成本并保持性能。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2512.05150"><img src="https://ar5iv.labs.arxiv.org/html/2512.05150/assets/x10.png" alt="Figure 6: Visualizations of 1-NFE images generated by Qwen-Image- TwinFlow w.r.t. training steps. In the early stages of training, our method converges rapidly, and the generated images begin to take shape (200 to 400 steps); as training progresses, our method gradually optimize the visual details (800 to 6400 steps)." width="720"></a>

> Figure 6: Visualizations of 1-NFE images generated by Qwen-Image- TwinFlow w.r.t. training steps. In the early stages of training, our method converges rapidly, and the generated images begin to take shape (200 to 400 steps); as training progresses, our method gradually optimize the visual details (800 to 6400 steps).
> 来源：[原论文](https://arxiv.org/abs/2512.05150)

</details>

#### 代表作

<details>
<summary><strong>1. TwinFlow: Realizing One-step Generation on Large Models with Self-adversarial Flows</strong> · arXiv (Cornell University) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22TwinFlow%3A+Realizing+One-step+Generation+on+Large+Models+with+Self-adversarial+Flows%22)（未缓存未经核验的数字）
- GitHub Stars：**537**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2512.05150)

**基于 Abstract 的 TL;DR**

研究者提出了TwinFlow框架，旨在提高大型多模态生成模型的效率。该方法通过简化传统的distillation和adversarial training过程，实现1步生成模型的训练，从而降低计算成本并保持性能。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2512.05150"><img src="https://ar5iv.labs.arxiv.org/html/2512.05150/assets/x10.png" alt="Figure 6: Visualizations of 1-NFE images generated by Qwen-Image- TwinFlow w.r.t. training steps. In the early stages of training, our method converges rapidly, and the generated images begin to take shape (200 to 400 steps); as training progresses, our method gradually optimize the visual details (800 to 6400 steps)." width="720"></a>

> Figure 6: Visualizations of 1-NFE images generated by Qwen-Image- TwinFlow w.r.t. training steps. In the early stages of training, our method converges rapidly, and the generated images begin to take shape (200 to 400 steps); as training progresses, our method gradually optimize the visual details (800 to 6400 steps).
> 来源：[原论文](https://arxiv.org/abs/2512.05150)

</details>

<details>
<summary><strong>2. [ICML 2026] ZwZ model family: SOTA fine-grained perception performace; ZoomBench: a new challenging perception benchmark</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**177**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/inclusionAI/Zooming-without-Zooming)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：[ICML 2026] ZwZ model family: SOTA fine-grained perception performace; ZoomBench: a new challenging perception benchmark 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>3. [ICLR 2026] AudioMCQ: A 571k audio multiple-choice question dataset for post-training Large Audio Language Models with dual CoT annotations and audio-contribution filtering. 🏆 1st place in DCASE 2025 Challenge.</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**51**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/inclusionAI/AudioMCQ)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：[ICLR 2026] AudioMCQ: A 571k audio multiple-choice question dataset for post-training Large Audio Language Models with dual CoT annotations and audio-contribution filtering. 🏆 1st place in DCASE 2025 Challenge. 可通过原始链接查看完整项目、论文或数据说明。

</details>

</details>

<details>
<summary><img src="https://github.com/areal-project.png?size=160" width="32" height="32" alt="AReaL Team logo"> &nbsp;<strong>AReaL Team</strong> · <code>verified</code></summary>

<br>

AReaL Team 隶属于 Ant Group，是一支主要关注强化学习、大模型训练、智能体等方向的研究工程团队。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** Ant Group
- **主要方向：** 强化学习、大模型训练、智能体、AI 系统
- **负责人：** [负责人/成员页](https://github.com/areal-project/AReaL) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [GitHub](https://github.com/areal-project/AReaL)

#### 最近工作 · 2026-07-28

<details>
<summary><strong>1. The RL Bridge for LLM-based Agent Applications. Made Simple &amp; Flexible.</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**5611**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/areal-project/AReaL)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：The RL Bridge for LLM-based Agent Applications. Made Simple &amp; Flexible. 可通过原始链接查看完整项目、论文或数据说明。

</details>

#### 代表作

<details>
<summary><strong>1. The RL Bridge for LLM-based Agent Applications. Made Simple &amp; Flexible.</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**5611**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/areal-project/AReaL)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：The RL Bridge for LLM-based Agent Applications. Made Simple &amp; Flexible. 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>2. Open MinT training runtime on AReaL</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**26**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/areal-project/AReaL-MinT)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：Open MinT training runtime on AReaL 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>3. This repository is the central place for non-code resources that govern and support the AReaL ecosystem.</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**4**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/areal-project/community)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：This repository is the central place for non-code resources that govern and support the AReaL ecosystem. 可通过原始链接查看完整项目、论文或数据说明。

</details>

</details>

### Xiaomi（2）

<details>
<summary><img src="https://github.com/XiaomiMiMo.png?size=160" width="32" height="32" alt="Xiaomi MiMo / LLM-Core Team logo"> &nbsp;<strong>Xiaomi MiMo / LLM-Core Team</strong> · <code>verified</code></summary>

<br>

Xiaomi MiMo / LLM-Core Team 隶属于 Xiaomi，是一支主要关注大语言模型、多模态学习、机器推理的基础模型团队。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** Xiaomi
- **主要方向：** 大语言模型、多模态学习、机器推理
- **负责人：** [负责人/成员页](https://github.com/XiaomiMiMo) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [GitHub](https://github.com/XiaomiMiMo)

#### 最近工作 · 2025

<details>
<summary><strong>2. MiMo: Unlocking the Reasoning Potential of Language Model -- From Pretraining to Posttraining</strong> · arXiv (Cornell University) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22MiMo%3A+Unlocking+the+Reasoning+Potential+of+Language+Model+--+From+Pretraining+to+Posttraining%22)（未缓存未经核验的数字）
- GitHub Stars：**2288**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2505.07608)

**基于 Abstract 的 TL;DR**

研究者提出了一种名为MiMo-7B的语言模型，专门用于解决推理任务。该模型在预训练和后训练阶段进行优化，并通过多步骤的数据混合策略和测试难度驱动的代码奖励方案来改善推理能力。结果表明，MiMo-7B-Base具有出色的推理潜力，超越了更大的32B模型，而RL-tuned模型MiMo-7B-RL在数学、代码和一般推理任务上表现出色，超过了OpenAI o1-mini的性能。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2505.07608"><img src="https://ar5iv.labs.arxiv.org/html/2505.07608/assets/x2.png" alt="Figure 2 : Implementation of Multi-Token Prediction with MiMo-7B. During pre-training we use a single MTP layer, while the inference stage can use multiple MTP layers for additional speedup." width="720"></a>

> Figure 2 : Implementation of Multi-Token Prediction with MiMo-7B. During pre-training we use a single MTP layer, while the inference stage can use multiple MTP layers for additional speedup.
> 来源：[原论文](https://arxiv.org/abs/2505.07608)

</details>

#### 代表作

<details>
<summary><strong>1. MiMo Code: Where Models and Agents Co-Evolve</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**12507**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/XiaomiMiMo/MiMo-Code)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：MiMo Code: Where Models and Agents Co-Evolve 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>2. MiMo: Unlocking the Reasoning Potential of Language Model -- From Pretraining to Posttraining</strong> · arXiv (Cornell University) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22MiMo%3A+Unlocking+the+Reasoning+Potential+of+Language+Model+--+From+Pretraining+to+Posttraining%22)（未缓存未经核验的数字）
- GitHub Stars：**2288**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2505.07608)

**基于 Abstract 的 TL;DR**

研究者提出了一种名为MiMo-7B的语言模型，专门用于解决推理任务。该模型在预训练和后训练阶段进行优化，并通过多步骤的数据混合策略和测试难度驱动的代码奖励方案来改善推理能力。结果表明，MiMo-7B-Base具有出色的推理潜力，超越了更大的32B模型，而RL-tuned模型MiMo-7B-RL在数学、代码和一般推理任务上表现出色，超过了OpenAI o1-mini的性能。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2505.07608"><img src="https://ar5iv.labs.arxiv.org/html/2505.07608/assets/x2.png" alt="Figure 2 : Implementation of Multi-Token Prediction with MiMo-7B. During pre-training we use a single MTP layer, while the inference stage can use multiple MTP layers for additional speedup." width="720"></a>

> Figure 2 : Implementation of Multi-Token Prediction with MiMo-7B. During pre-training we use a single MTP layer, while the inference stage can use multiple MTP layers for additional speedup.
> 来源：[原论文](https://arxiv.org/abs/2505.07608)

</details>

<details>
<summary><strong>3. MiMo-V2-Flash: Efficient Reasoning, Coding, and Agentic Foundation Model</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**1362**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/XiaomiMiMo/MiMo-V2-Flash)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：MiMo-V2-Flash: Efficient Reasoning, Coding, and Agentic Foundation Model 可通过原始链接查看完整项目、论文或数据说明。

</details>

</details>

<details>
<summary><img src="https://github.com/XiaomiMiMo.png?size=160" width="32" height="32" alt="Xiaomi Embodied Intelligence Team logo"> &nbsp;<strong>Xiaomi Embodied Intelligence Team</strong> · <code>verified</code></summary>

<br>

Xiaomi Embodied Intelligence Team 隶属于 Xiaomi，是一支主要关注具身智能、机器人、视觉—语言—动作模型的企业研究团队。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** Xiaomi
- **主要方向：** 具身智能、机器人、视觉—语言—动作模型
- **负责人：** [负责人/成员页](https://github.com/XiaomiMiMo/MiMo-Embodied) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [GitHub](https://github.com/XiaomiMiMo/MiMo-Embodied)

#### 最近工作 · 2025

<details>
<summary><strong>3. MiMo: Unlocking the Reasoning Potential of Language Model -- From Pretraining to Posttraining</strong> · arXiv (Cornell University) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22MiMo%3A+Unlocking+the+Reasoning+Potential+of+Language+Model+--+From+Pretraining+to+Posttraining%22)（未缓存未经核验的数字）
- GitHub Stars：**2288**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2505.07608)

**基于 Abstract 的 TL;DR**

研究者提出了MiMo-7B，一个专门用于解决推理任务的大型语言模型。通过优化预训练和后训练阶段，MiMo-7B表现出出色的推理能力，尤其是在数学、编程和一般推理任务上。该模型在测试中超越了更大的32B模型，并且经过RL训练后的版本MiMo-7B-RL也取得了突破性成果。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2505.07608"><img src="https://ar5iv.labs.arxiv.org/html/2505.07608/assets/x2.png" alt="Figure 2 : Implementation of Multi-Token Prediction with MiMo-7B. During pre-training we use a single MTP layer, while the inference stage can use multiple MTP layers for additional speedup." width="720"></a>

> Figure 2 : Implementation of Multi-Token Prediction with MiMo-7B. During pre-training we use a single MTP layer, while the inference stage can use multiple MTP layers for additional speedup.
> 来源：[原论文](https://arxiv.org/abs/2505.07608)

</details>

#### 代表作

<details>
<summary><strong>1. MiMo-Embodied</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**397**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/XiaomiMiMo/MiMo-Embodied)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：MiMo-Embodied 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>2. MiMo Code: Where Models and Agents Co-Evolve</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**12507**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/XiaomiMiMo/MiMo-Code)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：MiMo Code: Where Models and Agents Co-Evolve 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>3. MiMo: Unlocking the Reasoning Potential of Language Model -- From Pretraining to Posttraining</strong> · arXiv (Cornell University) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22MiMo%3A+Unlocking+the+Reasoning+Potential+of+Language+Model+--+From+Pretraining+to+Posttraining%22)（未缓存未经核验的数字）
- GitHub Stars：**2288**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2505.07608)

**基于 Abstract 的 TL;DR**

研究者提出了MiMo-7B，一个专门用于解决推理任务的大型语言模型。通过优化预训练和后训练阶段，MiMo-7B表现出出色的推理能力，尤其是在数学、编程和一般推理任务上。该模型在测试中超越了更大的32B模型，并且经过RL训练后的版本MiMo-7B-RL也取得了突破性成果。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2505.07608"><img src="https://ar5iv.labs.arxiv.org/html/2505.07608/assets/x2.png" alt="Figure 2 : Implementation of Multi-Token Prediction with MiMo-7B. During pre-training we use a single MTP layer, while the inference stage can use multiple MTP layers for additional speedup." width="720"></a>

> Figure 2 : Implementation of Multi-Token Prediction with MiMo-7B. During pre-training we use a single MTP layer, while the inference stage can use multiple MTP layers for additional speedup.
> 来源：[原论文](https://arxiv.org/abs/2505.07608)

</details>

</details>

### Xiaohongshu（2）

<details>
<summary><img src="https://github.com/rednote-hilab.png?size=160" width="32" height="32" alt="RedNote Hi Lab logo"> &nbsp;<strong>RedNote Hi Lab</strong> · <code>provisional</code></summary>

<br>

RedNote Hi Lab 隶属于 Xiaohongshu，是一支主要关注大语言模型、机器推理、智能体的企业研究实验室。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** Xiaohongshu
- **主要方向：** 大语言模型、机器推理、智能体
- **负责人：** [负责人/成员页](https://github.com/rednote-hilab/dots.vlm1) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [GitHub](https://github.com/rednote-hilab/dots.vlm1)

#### 最近工作 · 2025-09-26

<details>
<summary><strong>1. Research track · Large Language Models</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://github.com/rednote-hilab/dots.vlm1)

**摘要 / 项目说明**

这是团队的官方研究入口，可继续访问其研究方向、项目或论文列表；该条目不是单篇论文，因此不展示论文引用量。

</details>

#### 代表作

<details>
<summary><strong>1. Research track · Large Language Models</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://github.com/rednote-hilab/dots.vlm1)

**摘要 / 项目说明**

这是团队的官方研究入口，可继续访问其研究方向、项目或论文列表；该条目不是单篇论文，因此不展示论文引用量。

</details>

<details>
<summary><strong>2. Research track · Reasoning</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://huggingface.co/rednote-hilab/dots.llm1.base)

**摘要 / 项目说明**

这是团队的官方研究入口，可继续访问其研究方向、项目或论文列表；该条目不是单篇论文，因此不展示论文引用量。

</details>

<details>
<summary><strong>3. Research track · Agents</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://github.com/rednote-hilab/dots.vlm1)

**摘要 / 项目说明**

这是团队的官方研究入口，可继续访问其研究方向、项目或论文列表；该条目不是单篇论文，因此不展示论文引用量。

</details>

</details>

<details>
<summary><img src="https://github.com/FireRedTeam.png?size=160" width="32" height="32" alt="FireRed Team logo"> &nbsp;<strong>FireRed Team</strong> · <code>verified</code></summary>

<br>

FireRed Team 隶属于 Xiaohongshu，是一支主要关注语音技术、多模态学习、图像生成等方向的企业研究实验室。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** Xiaohongshu
- **主要方向：** 语音技术、多模态学习、图像生成、视频生成
- **负责人：** [负责人/成员页](https://fireredteam.github.io/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://fireredteam.github.io/) · [GitHub](https://github.com/FireRedTeam)

#### 最近工作 · 2025

<details>
<summary><strong>2. ReMatch: Boosting Representation through Matching for Multimodal Retrieval</strong> · arXiv (Cornell University) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22ReMatch%3A+Boosting+Representation+through+Matching+for+Multimodal+Retrieval%22)（未缓存未经核验的数字）
- GitHub Stars：**6**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2511.19278)

**基于 Abstract 的 TL;DR**

ReMatch是一种框架，利用MLLM的生成能力进行多模态检索。它通过将MLLM的embedding阶段与chat-style的生成匹配阶段结合起来，实现了instance-wise的判别监督和强化对难题负面样本的梯度。该方法在Massive 多模态 Embedding 基准（MMEB）上取得新高的表现，并在五个数据集上显示出强大的零-shot generalizeization结果。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2511.19278"><img src="https://ar5iv.labs.arxiv.org/html/2511.19278/assets/x2.png" alt="Figure 2 : Previous multimodal retrieval frameworks v.s. our ReMatch . Upper Left: Single token retrieval method outputs an embedding for each pair of query and doc corresponding the [EOS] position, and uses contrastive objective to maximize the similarity for corresponding pairs. Upper Right: our framework first augments the input with Learnable Tokens and obtains multi-vector representations at these learnable-token positions. Then orthogonal regularization are employed on these representations and fuse into one embedding for every query or doc which are optimized by contrastive objective. The output embeddings are adapted by a MLP projector into MLLM input distribution, which used by our" width="720"></a>

> Figure 2 : Previous multimodal retrieval frameworks v.s. our ReMatch . Upper Left: Single token retrieval method outputs an embedding for each pair of query and doc corresponding the [EOS] position, and uses contrastive objective to maximize the similarity for corresponding pairs. Upper Right: our framework first augments the input with Learnable Tokens and obtains multi-vector representations at these learnable-token positions. Then orthogonal regularization are employed on these representations and fuse into one embedding for every query or doc which are optimized by contrastive objective. The output embeddings are adapted by a MLP projector into MLLM input distribution, which used by our
> 来源：[原论文](https://arxiv.org/abs/2511.19278)

</details>

#### 代表作

<details>
<summary><strong>1. InstanceAssemble: Layout-Aware Image Generation via Instance Assembling Attention</strong> · arXiv (Cornell University) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22InstanceAssemble%3A+Layout-Aware+Image+Generation+via+Instance+Assembling+Attention%22)（未缓存未经核验的数字）
- GitHub Stars：**45**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2509.16691)

**基于 Abstract 的 TL;DR**

研究者提出了InstanceAssemble模型，利用instance-assembling attention来控制图像的布局和多模态内容。该模型通过轻量化LoRA模块适应现有DiT-based T2I模型，并引入Layout 对齐 Score（LGS）评估指标。实验结果显示，该模型在复杂布局条件下实现了state-of-the-art性能，兼容多种样式的LoRA模块。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2509.16691"><img src="https://ar5iv.labs.arxiv.org/html/2509.16691/assets/x3.png" alt="Figure 3 : (Top) instance-image attention map w/ layout. (Middle) global prompt-image attention map w/ layout. (Bottom) global prompt-image attention map w/o layout." width="720"></a>

> Figure 3 : (Top) instance-image attention map w/ layout. (Middle) global prompt-image attention map w/ layout. (Bottom) global prompt-image attention map w/o layout.
> 来源：[原论文](https://arxiv.org/abs/2509.16691)

</details>

<details>
<summary><strong>2. ReMatch: Boosting Representation through Matching for Multimodal Retrieval</strong> · arXiv (Cornell University) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22ReMatch%3A+Boosting+Representation+through+Matching+for+Multimodal+Retrieval%22)（未缓存未经核验的数字）
- GitHub Stars：**6**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2511.19278)

**基于 Abstract 的 TL;DR**

ReMatch是一种框架，利用MLLM的生成能力进行多模态检索。它通过将MLLM的embedding阶段与chat-style的生成匹配阶段结合起来，实现了instance-wise的判别监督和强化对难题负面样本的梯度。该方法在Massive 多模态 Embedding 基准（MMEB）上取得新高的表现，并在五个数据集上显示出强大的零-shot generalizeization结果。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2511.19278"><img src="https://ar5iv.labs.arxiv.org/html/2511.19278/assets/x2.png" alt="Figure 2 : Previous multimodal retrieval frameworks v.s. our ReMatch . Upper Left: Single token retrieval method outputs an embedding for each pair of query and doc corresponding the [EOS] position, and uses contrastive objective to maximize the similarity for corresponding pairs. Upper Right: our framework first augments the input with Learnable Tokens and obtains multi-vector representations at these learnable-token positions. Then orthogonal regularization are employed on these representations and fuse into one embedding for every query or doc which are optimized by contrastive objective. The output embeddings are adapted by a MLP projector into MLLM input distribution, which used by our" width="720"></a>

> Figure 2 : Previous multimodal retrieval frameworks v.s. our ReMatch . Upper Left: Single token retrieval method outputs an embedding for each pair of query and doc corresponding the [EOS] position, and uses contrastive objective to maximize the similarity for corresponding pairs. Upper Right: our framework first augments the input with Learnable Tokens and obtains multi-vector representations at these learnable-token positions. Then orthogonal regularization are employed on these representations and fuse into one embedding for every query or doc which are optimized by contrastive objective. The output embeddings are adapted by a MLP projector into MLLM input distribution, which used by our
> 来源：[原论文](https://arxiv.org/abs/2511.19278)

</details>

<details>
<summary><strong>3. Open-source industrial-grade ASR models supporting Mandarin, Chinese dialects and English, achieving a new SOTA on public Mandarin ASR benchmarks, while also offering outstanding singing lyrics recognition capability.</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**1943**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/FireRedTeam/FireRedASR)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：Open-source industrial-grade ASR models supporting Mandarin, Chinese dialects and English, achieving a new SOTA on public Mandarin ASR benchmarks, while also offering outstanding singing lyrics recognition capability. 可通过原始链接查看完整项目、论文或数据说明。

</details>

</details>

## 中国前沿 AI 公司与研究机构

### Shanghai Artificial Intelligence Laboratory（5）

<details>
<summary><img src="https://github.com/InternLM.png?size=160" width="32" height="32" alt="InternLM logo"> &nbsp;<strong>InternLM</strong> · <code>verified</code></summary>

<br>

InternLM 隶属于 Shanghai Artificial Intelligence Laboratory，是一支主要关注大语言模型、多模态学习、AI 系统等方向的基础模型团队。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** Shanghai Artificial Intelligence Laboratory
- **主要方向：** 大语言模型、多模态学习、AI 系统、模型服务
- **负责人：** [负责人/成员页](https://internlm.intern-ai.org.cn/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://internlm.intern-ai.org.cn/) · [GitHub](https://github.com/InternLM)

#### 最近工作 · 2026

<details>
<summary><strong>1. Intern-S1-Pro: Scientific Multimodal Foundation Model at Trillion Scale</strong> · arXiv (Cornell University) · 2026</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Intern-S1-Pro%3A+Scientific+Multimodal+Foundation+Model+at+Trillion+Scale%22)（未缓存未经核验的数字）
- GitHub Stars：**842**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2603.25040)

**基于 Abstract 的 TL;DR**

研究问题是如何在科学领域实现高性能的多模态基础模型。该模型Intern-S1-Pro首次实现一万亿参数的规模，强化了一般和科学领域的能力，并扩展了专门任务的科学专业能力。通过 XTuner 和 LMDeploy 的支持，模型能够有效地进行强化学习训练并保持精确性。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2603.25040"><img src="https://ar5iv.labs.arxiv.org/html/2603.25040/assets/x1.png" alt="Figure 1 : The SAGE (Synergistic Architecture for Generalizable Experts, including three layers, Foundation, Fusion, and Evolution) framework used in Intern-S1-Pro development, illustrating the core capabilities and the integrated learning process that enables synergistic improvements across domains." width="720"></a>

> Figure 1 : The SAGE (Synergistic Architecture for Generalizable Experts, including three layers, Foundation, Fusion, and Evolution) framework used in Intern-S1-Pro development, illustrating the core capabilities and the integrated learning process that enables synergistic improvements across domains.
> 来源：[原论文](https://arxiv.org/abs/2603.25040)

</details>

#### 代表作

<details>
<summary><strong>1. Intern-S1-Pro: Scientific Multimodal Foundation Model at Trillion Scale</strong> · arXiv (Cornell University) · 2026</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Intern-S1-Pro%3A+Scientific+Multimodal+Foundation+Model+at+Trillion+Scale%22)（未缓存未经核验的数字）
- GitHub Stars：**842**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2603.25040)

**基于 Abstract 的 TL;DR**

研究问题是如何在科学领域实现高性能的多模态基础模型。该模型Intern-S1-Pro首次实现一万亿参数的规模，强化了一般和科学领域的能力，并扩展了专门任务的科学专业能力。通过 XTuner 和 LMDeploy 的支持，模型能够有效地进行强化学习训练并保持精确性。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2603.25040"><img src="https://ar5iv.labs.arxiv.org/html/2603.25040/assets/x1.png" alt="Figure 1 : The SAGE (Synergistic Architecture for Generalizable Experts, including three layers, Foundation, Fusion, and Evolution) framework used in Intern-S1-Pro development, illustrating the core capabilities and the integrated learning process that enables synergistic improvements across domains." width="720"></a>

> Figure 1 : The SAGE (Synergistic Architecture for Generalizable Experts, including three layers, Foundation, Fusion, and Evolution) framework used in Intern-S1-Pro development, illustrating the core capabilities and the integrated learning process that enables synergistic improvements across domains.
> 来源：[原论文](https://arxiv.org/abs/2603.25040)

</details>

<details>
<summary><strong>2. Visual Self-Refine: A Pixel-Guided Paradigm for Accurate Chart Parsing</strong> · Open MIND · 2026</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Visual+Self-Refine%3A+A+Pixel-Guided+Paradigm+for+Accurate+Chart+Parsing%22)（未缓存未经核验的数字）
- GitHub Stars：**34**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2602.16455)

**基于 Abstract 的 TL;DR**

现有的大型视觉语言模型在文本级别的推理和自校正方面表现出突出的能力，但在视觉感知中心的复杂任务中，例如图表解析，仍然面临挑战。该研究提出了一种新颖的方法称为 Visual Self-Refine（VSR），它使模型能够生成像素级定位输出、可视化它们，然后将这些可视化反馈回自身，以便自我检查和纠正潜在的视觉感知错误。该研究在图表解析领域应用了 VSR 模式，提出了 ChartVSR 模型，该模型分为两个阶段：精确化阶段和解码阶段。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2602.16455"><img src="https://ar5iv.labs.arxiv.org/html/2602.16455/assets/x1.png" alt="Figure 1: Overview of Chart Parsing and Visual Self-Refine (VSR). (a) Even strong models often fail to produce entirely correct results in a single pass of Chart Parsing. (b) A schematic illustration of the proposed VSR method. The process follows the sequence indicated by the gray arrows ." width="720"></a>

> Figure 1: Overview of Chart Parsing and Visual Self-Refine (VSR). (a) Even strong models often fail to produce entirely correct results in a single pass of Chart Parsing. (b) A schematic illustration of the proposed VSR method. The process follows the sequence indicated by the gray arrows .
> 来源：[原论文](https://arxiv.org/abs/2602.16455)

</details>

<details>
<summary><strong>3. EndoCoT: Scaling Endogenous Chain-of-Thought Reasoning in Diffusion Models</strong> · arXiv (Cornell University) · 2026</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22EndoCoT%3A+Scaling+Endogenous+Chain-of-Thought+Reasoning+in+Diffusion+Models%22)（未缓存未经核验的数字）
- GitHub Stars：**43**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2603.12252)

**基于 Abstract 的 TL;DR**

研究者提出了Endogenous Chain-of-Thought（EndoCoT）框架，旨在解决多模态大语言模型（MLLMs）在扩散框架中的两个关键问题。首先，它通过迭代性思考指导模块来激活MLLMs的推理潜力，然后将这些状态与Denoising 扩散 Transformer（DiT）的去噪过程连接起来，最后使用终止思考对齐模块确保推理轨迹在文本监督下保持稳定。通过大量实验，EndoCoT实现了平均准确度92.1%，超过强基线的8.3个百分点。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2603.12252"><img src="https://ar5iv.labs.arxiv.org/html/2603.12252/assets/x3.png" alt="Figure 3 : Overview of EndoCoT . (a) Training: We propose a progressive two-stage training strategy: the first stage trains the model to fit both intermediate and final states at each reasoning step, capturing the full multi-step trajectory; the second stage freezes gradients on intermediate states and optimizes only the terminal state, refining generation quality while preserving learned reasoning dynamics (b) Inference: the model iteratively updates latent representations." width="720"></a>

> Figure 3 : Overview of EndoCoT . (a) Training: We propose a progressive two-stage training strategy: the first stage trains the model to fit both intermediate and final states at each reasoning step, capturing the full multi-step trajectory; the second stage freezes gradients on intermediate states and optimizes only the terminal state, refining generation quality while preserving learned reasoning dynamics (b) Inference: the model iteratively updates latent representations.
> 来源：[原论文](https://arxiv.org/abs/2603.12252)

</details>

</details>

<details>
<summary><img src="https://github.com/OpenGVLab.png?size=160" width="32" height="32" alt="OpenGVLab logo"> &nbsp;<strong>OpenGVLab</strong> · <code>verified</code></summary>

<br>

OpenGVLab 隶属于 Shanghai Artificial Intelligence Laboratory，是一支主要关注计算机视觉、多模态学习、视觉语言模型等方向的前沿 AI 研究团队。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** Shanghai Artificial Intelligence Laboratory
- **主要方向：** 计算机视觉、多模态学习、视觉语言模型、视频理解
- **负责人：** [负责人/成员页](https://github.com/OpenGVLab) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [GitHub](https://github.com/OpenGVLab) · [Hugging Face](https://huggingface.co/OpenGVLab)

#### 最近工作 · 2024

<details>
<summary><strong>1. VideoChat-Flash: Hierarchical Compression for Long-Context Video Modeling</strong> · arXiv (Cornell University) · 2024</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22VideoChat-Flash%3A+Hierarchical+Compression+for+Long-Context+Video+Modeling%22)（未缓存未经核验的数字）
- GitHub Stars：**527**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2501.00574)

**基于 Abstract 的 TL;DR**

该研究旨在解决长视频处理的挑战，提出了Hierarchical video token Compression（HiCo）方法和多阶段短到长学习方案。通过这些方法，研究者开发了VideoChat-Flash模型，表现出在主流长短视频benchmark上取得领先结果。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2501.00574"><img src="https://ar5iv.labs.arxiv.org/html/2501.00574/assets/x1.png" alt="Figure 1 : Comparison with mainstream MLLMs for long videos. VideoChat-Flash improves long video understanding efficiency and effectiveness by hierarchical compression and a short-to-long learning approach, respectively." width="720"></a>

> Figure 1 : Comparison with mainstream MLLMs for long videos. VideoChat-Flash improves long video understanding efficiency and effectiveness by hierarchical compression and a short-to-long learning approach, respectively.
> 来源：[原论文](https://arxiv.org/abs/2501.00574)

</details>

#### 代表作

<details>
<summary><strong>1. VideoChat-Flash: Hierarchical Compression for Long-Context Video Modeling</strong> · arXiv (Cornell University) · 2024</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22VideoChat-Flash%3A+Hierarchical+Compression+for+Long-Context+Video+Modeling%22)（未缓存未经核验的数字）
- GitHub Stars：**527**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2501.00574)

**基于 Abstract 的 TL;DR**

该研究旨在解决长视频处理的挑战，提出了Hierarchical video token Compression（HiCo）方法和多阶段短到长学习方案。通过这些方法，研究者开发了VideoChat-Flash模型，表现出在主流长短视频benchmark上取得领先结果。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2501.00574"><img src="https://ar5iv.labs.arxiv.org/html/2501.00574/assets/x1.png" alt="Figure 1 : Comparison with mainstream MLLMs for long videos. VideoChat-Flash improves long video understanding efficiency and effectiveness by hierarchical compression and a short-to-long learning approach, respectively." width="720"></a>

> Figure 1 : Comparison with mainstream MLLMs for long videos. VideoChat-Flash improves long video understanding efficiency and effectiveness by hierarchical compression and a short-to-long learning approach, respectively.
> 来源：[原论文](https://arxiv.org/abs/2501.00574)

</details>

<details>
<summary><strong>2. [ECCV 2026] Learning Goal-Oriented Language-Guided Navigation with Self-Improving Demonstrations at Scale</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**14**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/OpenGVLab/SID-VLN)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：[ECCV 2026] Learning Goal-Oriented Language-Guided Navigation with Self-Improving Demonstrations at Scale 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>3. [ICML 2026] GenExam: A Multidisciplinary Text-to-Image Exam</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**69**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/OpenGVLab/GenExam)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：[ICML 2026] GenExam: A Multidisciplinary Text-to-Image Exam 可通过原始链接查看完整项目、论文或数据说明。

</details>

</details>

<details>
<summary><img src="https://github.com/InternScience.png?size=160" width="32" height="32" alt="InternScience logo"> &nbsp;<strong>InternScience</strong> · <code>verified</code></summary>

<br>

InternScience 隶属于 Shanghai Artificial Intelligence Laboratory，是一支主要关注AI for Science、智能体、自主科学发现等方向的前沿 AI 研究团队。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** Shanghai Artificial Intelligence Laboratory
- **主要方向：** AI for Science、智能体、自主科学发现、大语言模型
- **负责人：** [负责人/成员页](https://discovery.intern-ai.org.cn/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [GitHub](https://github.com/InternScience) · [官网](https://discovery.intern-ai.org.cn/)

#### 最近工作 · 2026

<details>
<summary><strong>3. InternAgent-1.5: A Unified Agentic Framework for Long-Horizon Autonomous Scientific Discovery</strong> · Open MIND · 2026</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22InternAgent-1.5%3A+A+Unified+Agentic+Framework+for+Long-Horizon+Autonomous+Scientific+Discovery%22)（未缓存未经核验的数字）
- GitHub Stars：**1388**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2602.08990)

**基于 Abstract 的 TL;DR**

InternAgent-1.5是一种统一的系统，旨在实现从头到尾的科学探索。该系统采用结构化的架构，包括生成、验证和演化三个子系统，支持深度研究、解决方案优化和长期记忆等核心能力。通过多个科学推理基准和两个类型的发现任务，InternAgent-1.5表现出强大的基础能力，并提供了一种广泛适用和可扩展的自主科学探索框架。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2602.08990"><img src="https://ar5iv.labs.arxiv.org/html/2602.08990/assets/x8.png" alt="Figure 3 : Overview of InternAgent-1.5, illustrating its unified scientific discovery pipeline organized around the Generation, Verification, and Evolution subsystems. The system operates through foundational capabilities for deep research, solution refinement, and long horizon memory, which together enable sustained autonomous scientific discovery." width="720"></a>

> Figure 3 : Overview of InternAgent-1.5, illustrating its unified scientific discovery pipeline organized around the Generation, Verification, and Evolution subsystems. The system operates through foundational capabilities for deep research, solution refinement, and long horizon memory, which together enable sustained autonomous scientific discovery.
> 来源：[原论文](https://arxiv.org/abs/2602.08990)

</details>

#### 代表作

<details>
<summary><strong>1. ResearchClawBench: Evaluating AI Agents for Automated Research from Re-Discovery to New-Discovery</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**227**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/InternScience/ResearchClawBench)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：ResearchClawBench: Evaluating AI Agents for Automated Research from Re-Discovery to New-Discovery 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>2. Agents-A1: Scaling the Horizon, Not the Parameters</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**523**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/InternScience/Agents-A1)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：Agents-A1: Scaling the Horizon, Not the Parameters 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>3. InternAgent-1.5: A Unified Agentic Framework for Long-Horizon Autonomous Scientific Discovery</strong> · Open MIND · 2026</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22InternAgent-1.5%3A+A+Unified+Agentic+Framework+for+Long-Horizon+Autonomous+Scientific+Discovery%22)（未缓存未经核验的数字）
- GitHub Stars：**1388**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2602.08990)

**基于 Abstract 的 TL;DR**

InternAgent-1.5是一种统一的系统，旨在实现从头到尾的科学探索。该系统采用结构化的架构，包括生成、验证和演化三个子系统，支持深度研究、解决方案优化和长期记忆等核心能力。通过多个科学推理基准和两个类型的发现任务，InternAgent-1.5表现出强大的基础能力，并提供了一种广泛适用和可扩展的自主科学探索框架。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2602.08990"><img src="https://ar5iv.labs.arxiv.org/html/2602.08990/assets/x8.png" alt="Figure 3 : Overview of InternAgent-1.5, illustrating its unified scientific discovery pipeline organized around the Generation, Verification, and Evolution subsystems. The system operates through foundational capabilities for deep research, solution refinement, and long horizon memory, which together enable sustained autonomous scientific discovery." width="720"></a>

> Figure 3 : Overview of InternAgent-1.5, illustrating its unified scientific discovery pipeline organized around the Generation, Verification, and Evolution subsystems. The system operates through foundational capabilities for deep research, solution refinement, and long horizon memory, which together enable sustained autonomous scientific discovery.
> 来源：[原论文](https://arxiv.org/abs/2602.08990)

</details>

</details>

<details>
<summary><img src="https://github.com/opendatalab.png?size=160" width="32" height="32" alt="OpenDataLab logo"> &nbsp;<strong>OpenDataLab</strong> · <code>verified</code></summary>

<br>

OpenDataLab 隶属于 Shanghai Artificial Intelligence Laboratory，是一支主要关注数据中心 AI、多模态学习、文档智能等方向的研究平台。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** Shanghai Artificial Intelligence Laboratory
- **主要方向：** 数据中心 AI、多模态学习、文档智能、AI for Science
- **负责人：** [负责人/成员页](https://opendatalab.github.io/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://opendatalab.github.io/) · [GitHub](https://github.com/opendatalab)

#### 最近工作 · 2026

<details>
<summary><strong>3. MinerU-Diffusion: Rethinking Document OCR as Inverse Rendering via Diffusion Decoding</strong> · arXiv (Cornell University) · 2026</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22MinerU-Diffusion%3A+Rethinking+Document+OCR+as+Inverse+Rendering+via+Diffusion+Decoding%22)（未缓存未经核验的数字）
- GitHub Stars：**626**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2603.22458)

**基于 Abstract 的 TL;DR**

该研究从逆渲染的角度重新探讨了文档OCR，认为左到右的因果生成是序列化的artifact，而不是任务本身。提出了MinerU-Diffusion框架，采用平行diffusion降噪下条件化来替代传统的自回归解码。实验结果表明，MinerU-Diffusion在稳定性和效率方面有显著改进，能够减少依赖语言先验并提高视觉OCR能力。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2603.22458"><img src="https://ar5iv.labs.arxiv.org/html/2603.22458/assets/x3.png" alt="Figure 3 : Training of MinerU-Diffusion. Left: the target token sequence is randomly masked to form a partially observed input, and the model predicts only the masked positions under visual and prompt conditioning. Right: the structured block-attention mask used during training, where tokens attend bidirectionally within each block and causally to all preceding blocks, enabling parallel diffusion refinement within blocks while preserving coarse autoregressive structure across blocks." width="720"></a>

> Figure 3 : Training of MinerU-Diffusion. Left: the target token sequence is randomly masked to form a partially observed input, and the model predicts only the masked positions under visual and prompt conditioning. Right: the structured block-attention mask used during training, where tokens attend bidirectionally within each block and causally to all preceding blocks, enabling parallel diffusion refinement within blocks while preserving coarse autoregressive structure across blocks.
> 来源：[原论文](https://arxiv.org/abs/2603.22458)

</details>

#### 代表作

<details>
<summary><strong>1. OmniDocBench: Benchmarking Diverse PDF Document Parsing with Comprehensive Annotations</strong> · arXiv (Cornell University) · 2024</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22OmniDocBench%3A+Benchmarking+Diverse+PDF+Document+Parsing+with+Comprehensive+Annotations%22)（未缓存未经核验的数字）
- GitHub Stars：**1921**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2412.07626)

**基于 Abstract 的 TL;DR**

研究者推出OmniDocBench，一个新标准的benchmark，评估文档解析方法。该benchmark涵盖了多种文档类型和评估方式，包括19个布局类别和15个属性标签。结果表明，pipeline-based方法和end-to-end vision-language模型在不同文档类型上的强弱有所不同。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2412.07626"><img src="https://ar5iv.labs.arxiv.org/html/2412.07626/assets/x2.png" alt="Figure 2 : Overview of the OmniDocBench dataset construction." width="720"></a>

> Figure 2 : Overview of the OmniDocBench dataset construction.
> 来源：[原论文](https://arxiv.org/abs/2412.07626)

</details>

<details>
<summary><strong>2. TRivia: Self-supervised Fine-tuning of Vision-Language Models for Table Recognition</strong> · arXiv (Cornell University) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22TRivia%3A+Self-supervised+Fine-tuning+of+Vision-Language+Models+for+Table+Recognition%22)（未缓存未经核验的数字）
- GitHub Stars：**35**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2512.01248)

**基于 Abstract 的 TL;DR**

以下是简要的 TL;DR： 研究问题：表格识别（Table Recognition，TR）旨在将表格图像转换为半结构化表示，如 HTML 或 Markdown。目前，TR主要依赖于监督学习，但需要大量标签数据，这使得开源模型难以与商业模型相比。 核心方法：TRivia是一种自-supervised fine-tuning方法，可以让预训练的视觉-语言模型（VLM）直接从未标记的表格图像中学习。该方法使用问答机制和注意力引导模块来生成问题，并通过回答问题得分来提供反馈，促进TR模型自主地学习识别、结构化和推理表格。 主要实验结论：TRivia-3B是一种开源的、紧凑且领先的TR模型，它在三项流行基准上超过了现有系统（例如Gemini 2.5 Pro、MinerU2.5）。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2512.01248"><img src="https://ar5iv.labs.arxiv.org/html/2512.01248/assets/x3.png" alt="Figure 3 : Single-time QA generation captures limited table content, while multiple samplings introduce redundant or overlapping QA pairs. The proposed attention-guided QA generation leverages attention distributions to diversify question sources, producing concise and comprehensive QA pairs." width="720"></a>

> Figure 3 : Single-time QA generation captures limited table content, while multiple samplings introduce redundant or overlapping QA pairs. The proposed attention-guided QA generation leverages attention distributions to diversify question sources, producing concise and comprehensive QA pairs.
> 来源：[原论文](https://arxiv.org/abs/2512.01248)

</details>

<details>
<summary><strong>3. MinerU-Diffusion: Rethinking Document OCR as Inverse Rendering via Diffusion Decoding</strong> · arXiv (Cornell University) · 2026</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22MinerU-Diffusion%3A+Rethinking+Document+OCR+as+Inverse+Rendering+via+Diffusion+Decoding%22)（未缓存未经核验的数字）
- GitHub Stars：**626**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2603.22458)

**基于 Abstract 的 TL;DR**

该研究从逆渲染的角度重新探讨了文档OCR，认为左到右的因果生成是序列化的artifact，而不是任务本身。提出了MinerU-Diffusion框架，采用平行diffusion降噪下条件化来替代传统的自回归解码。实验结果表明，MinerU-Diffusion在稳定性和效率方面有显著改进，能够减少依赖语言先验并提高视觉OCR能力。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2603.22458"><img src="https://ar5iv.labs.arxiv.org/html/2603.22458/assets/x3.png" alt="Figure 3 : Training of MinerU-Diffusion. Left: the target token sequence is randomly masked to form a partially observed input, and the model predicts only the masked positions under visual and prompt conditioning. Right: the structured block-attention mask used during training, where tokens attend bidirectionally within each block and causally to all preceding blocks, enabling parallel diffusion refinement within blocks while preserving coarse autoregressive structure across blocks." width="720"></a>

> Figure 3 : Training of MinerU-Diffusion. Left: the target token sequence is randomly masked to form a partially observed input, and the model predicts only the masked positions under visual and prompt conditioning. Right: the structured block-attention mask used during training, where tokens attend bidirectionally within each block and causally to all preceding blocks, enabling parallel diffusion refinement within blocks while preserving coarse autoregressive structure across blocks.
> 来源：[原论文](https://arxiv.org/abs/2603.22458)

</details>

</details>

<details>
<summary><img src="https://github.com/OpenDriveLab.png?size=160" width="32" height="32" alt="OpenDriveLab logo"> &nbsp;<strong>OpenDriveLab</strong> · <code>verified</code></summary>

<br>

OpenDriveLab 隶属于 Shanghai Artificial Intelligence Laboratory，是一支主要关注自动驾驶、具身智能、世界模型等方向的前沿 AI 研究团队。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** Shanghai Artificial Intelligence Laboratory
- **主要方向：** 自动驾驶、具身智能、世界模型、机器人
- **负责人：** [负责人/成员页](https://opendrivelab.com/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://opendrivelab.com/) · [GitHub](https://github.com/OpenDriveLab)

#### 最近工作 · 2026

<details>
<summary><strong>2. World Engine: Towards the Era of Post-Training for Autonomous Driving</strong> · arXiv (Cornell University) · 2026</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22World+Engine%3A+Towards+the+Era+of+Post-Training+for+Autonomous+Driving%22)（未缓存未经核验的数字）
- GitHub Stars：**477**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2606.19836)

**基于 Abstract 的 TL;DR**

研究者开发了一个名为World Engine的框架，能够生成高真实度的交互环境，并在这些环境中训练自主汽车模型。通过这种方法，可以在安全性方面取得显著改进，减少安全性边界中的错误发生率。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2606.19836"><img src="https://ar5iv.labs.arxiv.org/html/2606.19836/assets/figure_nuplan_v2.png" alt="Figure 2: Improving autonomous driving systems with World Engine in safety-critical scenarios. a, Effect of scaling the pre-training dataset from 12k to 103k scenes. (Left) Performance on common cases improves predictably with data scale. (Middle, right) Performance gains on rare cases saturate due to the scarcity. Starting from a base agent pre-trained on 50k scenes, post-training with safety-oriented rewards leads to substantial open-loop performance improvements on both common and rare cases. Closed-loop performance further improves as the amount of post-training data generated by World Engine increases, achieving comparable gains to those obtained with approximately 14× additional pre-tr" width="720"></a>

> Figure 2: Improving autonomous driving systems with World Engine in safety-critical scenarios. a, Effect of scaling the pre-training dataset from 12k to 103k scenes. (Left) Performance on common cases improves predictably with data scale. (Middle, right) Performance gains on rare cases saturate due to the scarcity. Starting from a base agent pre-trained on 50k scenes, post-training with safety-oriented rewards leads to substantial open-loop performance improvements on both common and rare cases. Closed-loop performance further improves as the amount of post-training data generated by World Engine increases, achieving comparable gains to those obtained with approximately 14× additional pre-tr
> 来源：[原论文](https://arxiv.org/abs/2606.19836)

</details>

#### 代表作

<details>
<summary><strong>1. SimScale: Learning to Drive via Real-World Simulation at Scale</strong> · arXiv (Cornell University) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22SimScale%3A+Learning+to+Drive+via+Real-World+Simulation+at+Scale%22)（未缓存未经核验的数字）
- GitHub Stars：**311**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2511.23369)

**基于 Abstract 的 TL;DR**

该研究旨在解决自主驾驶系统的关键问题，即在各种场景中学习合理的决策。然而，现有数据集主要由人类专家收集的有限场景组成，这导致了缺乏数据多样性。为了补充这种不足，我们开发了一种能够合成大量未知状态的可扩展模拟框架。该框架使用先进的神经渲染技术和反应环境来生成高真实度的多视图观察，控制这些新生成的轨迹。我们还开发了一个伪专家轨迹生成机制，这些新生成的状态为动作监督提供了支持。在合成数据上，我们发现使用现有数据集和模拟样本进行简单的共训练可以显著提高各种规划方法在挑战性真实世界benchmark上的性能，包括+8.6 EPDMS 在 navhard 和 +2.9 在 navtest。更重要的是，这种政策改进随着模

</details>

<details>
<summary><strong>2. World Engine: Towards the Era of Post-Training for Autonomous Driving</strong> · arXiv (Cornell University) · 2026</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22World+Engine%3A+Towards+the+Era+of+Post-Training+for+Autonomous+Driving%22)（未缓存未经核验的数字）
- GitHub Stars：**477**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2606.19836)

**基于 Abstract 的 TL;DR**

研究者开发了一个名为World Engine的框架，能够生成高真实度的交互环境，并在这些环境中训练自主汽车模型。通过这种方法，可以在安全性方面取得显著改进，减少安全性边界中的错误发生率。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2606.19836"><img src="https://ar5iv.labs.arxiv.org/html/2606.19836/assets/figure_nuplan_v2.png" alt="Figure 2: Improving autonomous driving systems with World Engine in safety-critical scenarios. a, Effect of scaling the pre-training dataset from 12k to 103k scenes. (Left) Performance on common cases improves predictably with data scale. (Middle, right) Performance gains on rare cases saturate due to the scarcity. Starting from a base agent pre-trained on 50k scenes, post-training with safety-oriented rewards leads to substantial open-loop performance improvements on both common and rare cases. Closed-loop performance further improves as the amount of post-training data generated by World Engine increases, achieving comparable gains to those obtained with approximately 14× additional pre-tr" width="720"></a>

> Figure 2: Improving autonomous driving systems with World Engine in safety-critical scenarios. a, Effect of scaling the pre-training dataset from 12k to 103k scenes. (Left) Performance on common cases improves predictably with data scale. (Middle, right) Performance gains on rare cases saturate due to the scarcity. Starting from a base agent pre-trained on 50k scenes, post-training with safety-oriented rewards leads to substantial open-loop performance improvements on both common and rare cases. Closed-loop performance further improves as the amount of post-training data generated by World Engine increases, achieving comparable gains to those obtained with approximately 14× additional pre-tr
> 来源：[原论文](https://arxiv.org/abs/2606.19836)

</details>

<details>
<summary><strong>3. RISE: Self-Improving Robot Policy with Compositional World Model</strong> · Open MIND · 2026</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22RISE%3A+Self-Improving+Robot+Policy+with+Compositional+World+Model%22)（未缓存未经核验的数字）
- GitHub Stars：**329**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2602.11075)

**基于 Abstract 的 TL;DR**

研究者提出了Rise框架，旨在通过想象力来实现机器人强化学习的可靠性。该框架结合了预测未来动态和评估想象结果的模型，能够在无需物理交互的情况下不断改进策略。实验结果表明，Rise在三项挑战任务上取得了显著的改善，尤其是在动态堆栈、背包装裹和箱子关闭等任务中。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2602.11075"><img src="https://ar5iv.labs.arxiv.org/html/2602.11075/assets/x4.png" alt="Figure 4 : Workflow of compositional world model. Top : Training recipe upon proper model initialization. Bottom : Inference pipeline that yields rewarded samples for policy optimization. Both modules are compatible with multi-view images. We omit text prompt for both policy and value model for brevity." width="720"></a>

> Figure 4 : Workflow of compositional world model. Top : Training recipe upon proper model initialization. Bottom : Inference pipeline that yields rewarded samples for policy optimization. Both modules are compatible with multi-view images. We omit text prompt for both policy and value model for brevity.
> 来源：[原论文](https://arxiv.org/abs/2602.11075)

</details>

</details>

### DeepSeek（1）

<details>
<summary><img src="https://github.com/deepseek-ai.png?size=160" width="32" height="32" alt="DeepSeek AI Research logo"> &nbsp;<strong>DeepSeek AI Research</strong> · <code>verified</code></summary>

<br>

DeepSeek AI Research 隶属于 DeepSeek，是一支主要关注大语言模型、机器推理、AI 系统等方向的前沿 AI 实验室。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** DeepSeek
- **主要方向：** 大语言模型、机器推理、AI 系统、多模态学习
- **负责人：** [负责人/成员页](https://www.deepseek.com/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://www.deepseek.com/) · [GitHub](https://github.com/deepseek-ai)

#### 最近工作 · 2024

<details>
<summary><strong>3. DeepSeek-V2: A Strong, Economical, and Efficient Mixture-of-Experts Language Model</strong> · arXiv (Cornell University) · 2024</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22DeepSeek-V2%3A+A+Strong%2C+Economical%2C+and+Efficient+Mixture-of-Experts+Language+Model%22)（未缓存未经核验的数字）
- GitHub Stars：**5021**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2405.04434)

**基于 Abstract 的 TL;DR**

DeepSeek-V2是一种强大的混合专家语言模型，采用多头隐息注意力（Multi-head Latent Attention）和深度寻找MoE（DeepSeekMoE）等创新架构。通过预训练和fine-tuning，DeepSeek-V2在性能方面取得了显著的进步，同时降低了计算成本和缓存大小。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2405.04434"><img src="https://ar5iv.labs.arxiv.org/html/2405.04434/assets/x3.png" alt="Figure 2: Illustration of the architecture of DeepSeek-V2. MLA ensures efficient inference by significantly reducing the KV cache for generation, and DeepSeekMoE enables training strong models at an economical cost through the sparse architecture." width="720"></a>

> Figure 2: Illustration of the architecture of DeepSeek-V2. MLA ensures efficient inference by significantly reducing the KV cache for generation, and DeepSeekMoE enables training strong models at an economical cost through the sparse architecture.
> 来源：[原论文](https://arxiv.org/abs/2405.04434)

</details>

#### 代表作

<details>
<summary><strong>1. DreamCraft3D: Hierarchical 3D Generation with Bootstrapped Diffusion Prior</strong> · arXiv (Cornell University) · 2023</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22DreamCraft3D%3A+Hierarchical+3D+Generation+with+Bootstrapped+Diffusion+Prior%22)（未缓存未经核验的数字）
- GitHub Stars：**3014**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2310.16818)

**基于 Abstract 的 TL;DR**

DreamCraft3D是一种高效的3D内容生成方法，利用2D参考图来指导几何 sculpting和表面增强。该方法通过视依赖性扩散模型进行分数稀释样本，以确保几何形状的一致性。通过使用3D感知的扩散模型和多种训练策略，DreamCraft3D能够生成具有高真实度的3D对象，并且通过反复优化扩散 prior 和 3D场景表示来实现视依赖性的改进。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2310.16818"><img src="https://ar5iv.labs.arxiv.org/html/2310.16818/assets/x10.png" alt="Figure 9: Failure case. Our method learns incorrect geometry for elephant nose." width="720"></a>

> Figure 9: Failure case. Our method learns incorrect geometry for elephant nose.
> 来源：[原论文](https://arxiv.org/abs/2310.16818)

</details>

<details>
<summary><strong>2. DeepSeek LLM: Let there be answers</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**7161**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/deepseek-ai/DeepSeek-LLM)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：DeepSeek LLM: Let there be answers 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>3. DeepSeek-V2: A Strong, Economical, and Efficient Mixture-of-Experts Language Model</strong> · arXiv (Cornell University) · 2024</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22DeepSeek-V2%3A+A+Strong%2C+Economical%2C+and+Efficient+Mixture-of-Experts+Language+Model%22)（未缓存未经核验的数字）
- GitHub Stars：**5021**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2405.04434)

**基于 Abstract 的 TL;DR**

DeepSeek-V2是一种强大的混合专家语言模型，采用多头隐息注意力（Multi-head Latent Attention）和深度寻找MoE（DeepSeekMoE）等创新架构。通过预训练和fine-tuning，DeepSeek-V2在性能方面取得了显著的进步，同时降低了计算成本和缓存大小。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2405.04434"><img src="https://ar5iv.labs.arxiv.org/html/2405.04434/assets/x3.png" alt="Figure 2: Illustration of the architecture of DeepSeek-V2. MLA ensures efficient inference by significantly reducing the KV cache for generation, and DeepSeekMoE enables training strong models at an economical cost through the sparse architecture." width="720"></a>

> Figure 2: Illustration of the architecture of DeepSeek-V2. MLA ensures efficient inference by significantly reducing the KV cache for generation, and DeepSeekMoE enables training strong models at an economical cost through the sparse architecture.
> 来源：[原论文](https://arxiv.org/abs/2405.04434)

</details>

</details>

### Zhipu AI（1）

<details>
<summary><img src="https://github.com/zai-org.png?size=160" width="32" height="32" alt="Z.ai / GLM Team logo"> &nbsp;<strong>Z.ai / GLM Team</strong> · <code>verified</code></summary>

<br>

Z.ai / GLM Team 隶属于 Zhipu AI，是一支主要关注大语言模型、多模态学习、智能体等方向的前沿 AI 实验室。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** Zhipu AI
- **主要方向：** 大语言模型、多模态学习、智能体、机器推理
- **负责人：** [负责人/成员页](https://z.ai/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://z.ai/) · [GitHub](https://github.com/zai-org)

#### 最近工作 · 2025

<details>
<summary><strong>3. SCAIL: Towards Studio-Grade Character Animation via In-Context Learning of 3D-Consistent Pose Representations</strong> · arXiv (Cornell University) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22SCAIL%3A+Towards+Studio-Grade+Character+Animation+via+In-Context+Learning+of+3D-Consistent+Pose+Representations%22)（未缓存未经核验的数字）
- GitHub Stars：**1024**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2512.05905)

**基于 Abstract 的 TL;DR**

研究者提出了一种名为SCAIL的框架，旨在解决控制性人形动画达到Studio级标准的挑战。该框架通过创新3D姿势表示和全文本姿势注入机制，实现了对复杂动作和跨身份动画的有效处理。实验结果表明，SCAIL取得了State-of-the-Art的表现，推进人形动画控制向Studio级标准的进展。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2512.05905"><img src="https://ar5iv.labs.arxiv.org/html/2512.05905/assets/x2.png" alt="Figure 2 : Overview of the proposed 3D-consistent pose. For scaling implementation, we take the clavicle or the pelvis as the central reference, applying scaling from proximal to distal along each limb in bones set ℬ \mathcal{B} . Aug ​ ( ⋅ ) \textit{Aug}(\cdot) denotes augmentation in training, Ret ​ ( ⋅ ) \textit{Ret}(\cdot) denotes retargeting in inference, and 𝒫 ref = { P j ref ∣ 1 ≤ j ≤ N } \mathcal{P}^{\text{ref}}=\{\text{P}^{\text{ref}}_{j}\mid 1\leq j\leq N\} denotes N N estimated 2D keypoints in the reference image. We further incorporate hand and face controls by overlaying 2D hand and face keypoints onto the rendered sequences, and align them with the projection of 3D joints durin" width="720"></a>

> Figure 2 : Overview of the proposed 3D-consistent pose. For scaling implementation, we take the clavicle or the pelvis as the central reference, applying scaling from proximal to distal along each limb in bones set ℬ \mathcal{B} . Aug ​ ( ⋅ ) \textit{Aug}(\cdot) denotes augmentation in training, Ret ​ ( ⋅ ) \textit{Ret}(\cdot) denotes retargeting in inference, and 𝒫 ref = { P j ref ∣ 1 ≤ j ≤ N } \mathcal{P}^{\text{ref}}=\{\text{P}^{\text{ref}}_{j}\mid 1\leq j\leq N\} denotes N N estimated 2D keypoints in the reference image. We further incorporate hand and face controls by overlaying 2D hand and face keypoints onto the rendered sequences, and align them with the projection of 3D joints durin
> 来源：[原论文](https://arxiv.org/abs/2512.05905)

</details>

#### 代表作

<details>
<summary><strong>1. text and image to video generation: CogVideoX (2024) and CogVideo (ICLR 2023)</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**12916**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/zai-org/CogVideo)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：text and image to video generation: CogVideoX (2024) and CogVideo (ICLR 2023) 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>2. CogView4, CogView3-Plus and CogView3(ECCV 2024)</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**1101**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/zai-org/CogView4)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：CogView4, CogView3-Plus and CogView3(ECCV 2024) 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>3. SCAIL: Towards Studio-Grade Character Animation via In-Context Learning of 3D-Consistent Pose Representations</strong> · arXiv (Cornell University) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22SCAIL%3A+Towards+Studio-Grade+Character+Animation+via+In-Context+Learning+of+3D-Consistent+Pose+Representations%22)（未缓存未经核验的数字）
- GitHub Stars：**1024**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2512.05905)

**基于 Abstract 的 TL;DR**

研究者提出了一种名为SCAIL的框架，旨在解决控制性人形动画达到Studio级标准的挑战。该框架通过创新3D姿势表示和全文本姿势注入机制，实现了对复杂动作和跨身份动画的有效处理。实验结果表明，SCAIL取得了State-of-the-Art的表现，推进人形动画控制向Studio级标准的进展。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2512.05905"><img src="https://ar5iv.labs.arxiv.org/html/2512.05905/assets/x2.png" alt="Figure 2 : Overview of the proposed 3D-consistent pose. For scaling implementation, we take the clavicle or the pelvis as the central reference, applying scaling from proximal to distal along each limb in bones set ℬ \mathcal{B} . Aug ​ ( ⋅ ) \textit{Aug}(\cdot) denotes augmentation in training, Ret ​ ( ⋅ ) \textit{Ret}(\cdot) denotes retargeting in inference, and 𝒫 ref = { P j ref ∣ 1 ≤ j ≤ N } \mathcal{P}^{\text{ref}}=\{\text{P}^{\text{ref}}_{j}\mid 1\leq j\leq N\} denotes N N estimated 2D keypoints in the reference image. We further incorporate hand and face controls by overlaying 2D hand and face keypoints onto the rendered sequences, and align them with the projection of 3D joints durin" width="720"></a>

> Figure 2 : Overview of the proposed 3D-consistent pose. For scaling implementation, we take the clavicle or the pelvis as the central reference, applying scaling from proximal to distal along each limb in bones set ℬ \mathcal{B} . Aug ​ ( ⋅ ) \textit{Aug}(\cdot) denotes augmentation in training, Ret ​ ( ⋅ ) \textit{Ret}(\cdot) denotes retargeting in inference, and 𝒫 ref = { P j ref ∣ 1 ≤ j ≤ N } \mathcal{P}^{\text{ref}}=\{\text{P}^{\text{ref}}_{j}\mid 1\leq j\leq N\} denotes N N estimated 2D keypoints in the reference image. We further incorporate hand and face controls by overlaying 2D hand and face keypoints onto the rendered sequences, and align them with the projection of 3D joints durin
> 来源：[原论文](https://arxiv.org/abs/2512.05905)

</details>

</details>

### Moonshot AI（1）

<details>
<summary><img src="https://github.com/MoonshotAI.png?size=160" width="32" height="32" alt="Moonshot AI / Kimi Research logo"> &nbsp;<strong>Moonshot AI / Kimi Research</strong> · <code>verified</code></summary>

<br>

Moonshot AI / Kimi Research 隶属于 Moonshot AI，是一支主要关注大语言模型、智能体、多模态学习等方向的前沿 AI 实验室。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** Moonshot AI
- **主要方向：** 大语言模型、智能体、多模态学习、AI 系统
- **负责人：** [负责人/成员页](https://www.moonshot.cn/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://www.moonshot.cn/) · [GitHub](https://github.com/MoonshotAI)

#### 最近工作 · 2026-07-28

<details>
<summary><strong>3. Kimi Code CLI  —  The Starting Point for Next-Gen Agents</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**5453**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/MoonshotAI/kimi-code)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：Kimi Code CLI — The Starting Point for Next-Gen Agents 可通过原始链接查看完整项目、论文或数据说明。

</details>

#### 代表作

<details>
<summary><strong>1. Kimi K2 is the large language model series developed by Moonshot AI team</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**11053**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/MoonshotAI/Kimi-K2)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：Kimi K2 is the large language model series developed by Moonshot AI team 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>2. Kimi Code CLI is your next CLI agent.</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**10972**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/MoonshotAI/kimi-cli)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：Kimi Code CLI is your next CLI agent. 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>3. Kimi Code CLI  —  The Starting Point for Next-Gen Agents</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**5453**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/MoonshotAI/kimi-code)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：Kimi Code CLI — The Starting Point for Next-Gen Agents 可通过原始链接查看完整项目、论文或数据说明。

</details>

</details>

### MiniMax（1）

<details>
<summary><img src="https://github.com/MiniMax-AI.png?size=160" width="32" height="32" alt="MiniMax Research logo"> &nbsp;<strong>MiniMax Research</strong> · <code>verified</code></summary>

<br>

MiniMax Research 隶属于 MiniMax，是一支主要关注大语言模型、语音技术、多模态学习等方向的前沿 AI 实验室。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** MiniMax
- **主要方向：** 大语言模型、语音技术、多模态学习、视频生成
- **负责人：** [负责人/成员页](https://www.minimaxi.com/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://www.minimaxi.com/) · [GitHub](https://github.com/MiniMax-AI)

#### 最近工作 · 2025

<details>
<summary><strong>1. Towards Scalable Pre-training of Visual Tokenizers for Generation</strong> · arXiv (Cornell University) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Towards+Scalable+Pre-training+of+Visual+Tokenizers+for+Generation%22)（未缓存未经核验的数字）
- GitHub Stars：**495**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2512.13687)

**基于 Abstract 的 TL;DR**

该研究探讨了视觉 tokenizer中的隐层空间质量对生成模型的影响。研究发现，标准重构基准训练方法产生的隐层空间偏向低级信息，从而导致生成能力下降。该工作提出了一种新的视觉 tokenizer预训练框架VTP，通过联合优化图像-文本对比、自-supervised和重构损失来解决这一问题。研究结果表明，理解力是生成的关键驱动因素，而预训练视觉 tokenizer可以有效提高生成性能，并且能够有效利用计算资源和参数。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2512.13687"><img src="https://ar5iv.labs.arxiv.org/html/2512.13687/assets/x1.png" alt="Figure 1 : Visual Tokenzier Pre-training. We revisit the visual tokenizer pre-training in LDM  [ ldm ] from a representation learning perspective. Critically, while keeping the diffusion model (e.g., DiT  [ dit ] ) training configuration fixed, our method improves generation solely by scaling the tokenizer’s pre-training to learn a better-structured latent space." width="720"></a>

> Figure 1 : Visual Tokenzier Pre-training. We revisit the visual tokenizer pre-training in LDM  [ ldm ] from a representation learning perspective. Critically, while keeping the diffusion model (e.g., DiT  [ dit ] ) training configuration fixed, our method improves generation solely by scaling the tokenizer’s pre-training to learn a better-structured latent space.
> 来源：[原论文](https://arxiv.org/abs/2512.13687)

</details>

#### 代表作

<details>
<summary><strong>1. Towards Scalable Pre-training of Visual Tokenizers for Generation</strong> · arXiv (Cornell University) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Towards+Scalable+Pre-training+of+Visual+Tokenizers+for+Generation%22)（未缓存未经核验的数字）
- GitHub Stars：**495**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2512.13687)

**基于 Abstract 的 TL;DR**

该研究探讨了视觉 tokenizer中的隐层空间质量对生成模型的影响。研究发现，标准重构基准训练方法产生的隐层空间偏向低级信息，从而导致生成能力下降。该工作提出了一种新的视觉 tokenizer预训练框架VTP，通过联合优化图像-文本对比、自-supervised和重构损失来解决这一问题。研究结果表明，理解力是生成的关键驱动因素，而预训练视觉 tokenizer可以有效提高生成性能，并且能够有效利用计算资源和参数。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2512.13687"><img src="https://ar5iv.labs.arxiv.org/html/2512.13687/assets/x1.png" alt="Figure 1 : Visual Tokenzier Pre-training. We revisit the visual tokenizer pre-training in LDM  [ ldm ] from a representation learning perspective. Critically, while keeping the diffusion model (e.g., DiT  [ dit ] ) training configuration fixed, our method improves generation solely by scaling the tokenizer’s pre-training to learn a better-structured latent space." width="720"></a>

> Figure 1 : Visual Tokenzier Pre-training. We revisit the visual tokenizer pre-training in LDM  [ ldm ] from a representation learning perspective. Critically, while keeping the diffusion model (e.g., DiT  [ dit ] ) training configuration fixed, our method improves generation solely by scaling the tokenizer’s pre-training to learn a better-structured latent space.
> 来源：[原论文](https://arxiv.org/abs/2512.13687)

</details>

<details>
<summary><strong>2. SynLogic: Synthesizing Verifiable Reasoning Data at Scale for Learning Logical Reasoning and Beyond</strong> · arXiv (Cornell University) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22SynLogic%3A+Synthesizing+Verifiable+Reasoning+Data+at+Scale+for+Learning+Logical+Reasoning+and+Beyond%22)（未缓存未经核验的数字）
- GitHub Stars：**203**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2505.19641)

**基于 Abstract 的 TL;DR**

本研究开发了SynLogic数据合成框架和数据集，用于生成大量的逻辑推理数据。通过RL训练，SynLogic在7B和32B模型上表现出领先的逻辑推理能力，并且与其他开源数据集进行比较，显示出更好的结果。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2505.19641"><img src="https://ar5iv.labs.arxiv.org/html/2505.19641/assets/x1.png" alt="Figure 1: The framework of logic data synthesis. The process begins with the selection of suitable tasks and the identification of key parameters that control task difficulty. Next, logic instances are generated with appropriate difficulty control (e.g., setting the grid size of Sudoku to 7). These instances are subsequently formalized into natural language instructions. Each task is paired with a task-specific verifier to check the correctness of responses. This framework enables the systematic synthesis of high-quality logic data, covering a wide range of difficulty levels and 35 task types." width="720"></a>

> Figure 1: The framework of logic data synthesis. The process begins with the selection of suitable tasks and the identification of key parameters that control task difficulty. Next, logic instances are generated with appropriate difficulty control (e.g., setting the grid size of Sudoku to 7). These instances are subsequently formalized into natural language instructions. Each task is paired with a task-specific verifier to check the correctness of responses. This framework enables the systematic synthesis of high-quality logic data, covering a wide range of difficulty levels and 35 task types.
> 来源：[原论文](https://arxiv.org/abs/2505.19641)

</details>

<details>
<summary><strong>3. skills</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**13174**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/MiniMax-AI/skills)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：skills 可通过原始链接查看完整项目、论文或数据说明。

</details>

</details>

## 美国公司

### Alphabet（2）

<details>
<summary><img src="https://github.com/google-deepmind.png?size=160" width="32" height="32" alt="Google DeepMind logo"> &nbsp;<strong>Google DeepMind</strong> · <code>verified</code></summary>

<br>

Google DeepMind 隶属于 Alphabet，是一支主要关注基础模型、强化学习、多模态学习等方向的前沿 AI 实验室。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** Alphabet
- **主要方向：** 基础模型、强化学习、多模态学习、AI for Science
- **负责人：** [负责人/成员页](https://deepmind.google/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://deepmind.google/) · [GitHub](https://github.com/google-deepmind)

#### 最近工作 · 2024

<details>
<summary><strong>1. VideoPrism: A Foundational Visual Encoder for Video Understanding</strong> · arXiv (Cornell University) · 2024</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22VideoPrism%3A+A+Foundational+Visual+Encoder+for+Video+Understanding%22)（未缓存未经核验的数字）
- GitHub Stars：**388**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2402.13217)

**基于 Abstract 的 TL;DR**

VideoPrism是一种通用视频编码器，使用单个冻结模型解决多种视频理解任务。通过预训练于高质量视频-caption对集和噪声平行文本的视频片段集上，VideoPrism实现了语义视频嵌入的全局局部 distilled 和token shuffling方案，使其专注于视频模态，同时利用视频相关的有价值的文本。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2402.13217"><img src="https://ar5iv.labs.arxiv.org/html/2402.13217/assets/x2.png" alt="Figure 2 : VideoPrism vs.  the previous best-performing FMs. Please find the details of this figure in Appendix   D ." width="720"></a>

> Figure 2 : VideoPrism vs.  the previous best-performing FMs. Please find the details of this figure in Appendix   D .
> 来源：[原论文](https://arxiv.org/abs/2402.13217)

</details>

#### 代表作

<details>
<summary><strong>1. VideoPrism: A Foundational Visual Encoder for Video Understanding</strong> · arXiv (Cornell University) · 2024</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22VideoPrism%3A+A+Foundational+Visual+Encoder+for+Video+Understanding%22)（未缓存未经核验的数字）
- GitHub Stars：**388**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2402.13217)

**基于 Abstract 的 TL;DR**

VideoPrism是一种通用视频编码器，使用单个冻结模型解决多种视频理解任务。通过预训练于高质量视频-caption对集和噪声平行文本的视频片段集上，VideoPrism实现了语义视频嵌入的全局局部 distilled 和token shuffling方案，使其专注于视频模态，同时利用视频相关的有价值的文本。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2402.13217"><img src="https://ar5iv.labs.arxiv.org/html/2402.13217/assets/x2.png" alt="Figure 2 : VideoPrism vs.  the previous best-performing FMs. Please find the details of this figure in Appendix   D ." width="720"></a>

> Figure 2 : VideoPrism vs.  the previous best-performing FMs. Please find the details of this figure in Appendix   D .
> 来源：[原论文](https://arxiv.org/abs/2402.13217)

</details>

<details>
<summary><strong>2. Do Large Language Models Latently Perform Multi-Hop Reasoning?</strong> · arXiv (Cornell University) · 2024</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Do+Large+Language+Models+Latently+Perform+Multi-Hop+Reasoning%3F%22)（未缓存未经核验的数字）
- GitHub Stars：**93**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2402.16837)

**基于 Abstract 的 TL;DR**

研究人员探讨了大型语言模型（LLM）是否隐含执行复杂提示的多步推理。他们发现，LLM在某些关系类型的提示中隐含执行多步推理，并且利用其知识来完成提示，但这种推理的使用取决于上下文。研究结果表明，大型语言模型的大小会影响第一步推理的效率，但第二步推理的效率则没有明显的关联。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2402.16837"><img src="https://ar5iv.labs.arxiv.org/html/2402.16837/assets/x1.png" alt="Figure 1: We investigate the latent multi-hop reasoning of LLMs. For the first hop, we change the input prompt to refer to the bridge entity (Stevie Wonder) and check how often it increases the model’s internal recall of the bridge entity. For the second hop, we check if increasing this recall causes the model output to be more consistent with respect to what it knows about the bridge entity’s attribute (mother of Stevie Wonder)." width="720"></a>

> Figure 1: We investigate the latent multi-hop reasoning of LLMs. For the first hop, we change the input prompt to refer to the bridge entity (Stevie Wonder) and check how often it increases the model’s internal recall of the bridge entity. For the second hop, we check if increasing this recall causes the model output to be more consistent with respect to what it knows about the bridge entity’s attribute (mother of Stevie Wonder).
> 来源：[原论文](https://arxiv.org/abs/2402.16837)

</details>

<details>
<summary><strong>3. &quot;Making group conversations more accessible. Real-time speaker localization and directional guidance for mobile speech-to-text. ACM CHI 2025 Best Paper Award.&quot;</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**9**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/google-deepmind/speech-compass)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：&quot;Making group conversations more accessible. Real-time speaker localization and directional guidance for mobile speech-to-text. ACM CHI 2025 Best Paper Award.&quot; 可通过原始链接查看完整项目、论文或数据说明。

</details>

</details>

<details>
<summary><img src="https://github.com/google-research.png?size=160" width="32" height="32" alt="Google Research logo"> &nbsp;<strong>Google Research</strong> · <code>verified</code></summary>

<br>

Google Research 隶属于 Alphabet，是一支主要关注机器学习、自然语言处理、计算机视觉等方向的企业研究实验室。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** Alphabet
- **主要方向：** 机器学习、自然语言处理、计算机视觉、AI 系统
- **负责人：** [负责人/成员页](https://research.google/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://research.google/) · [GitHub](https://github.com/google-research)

#### 最近工作 · 2026-07-27

<details>
<summary><strong>3. Tooling for agile modeling on large machine perception embedding databases.</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**120**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/google-research/perch-hoplite)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：Tooling for agile modeling on large machine perception embedding databases. 可通过原始链接查看完整项目、论文或数据说明。

</details>

#### 代表作

<details>
<summary><strong>1. Google Research</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**38436**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/google-research/google-research)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：Google Research 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>2. Shared repository for open-sourced projects from the Google AI Language team.</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**1789**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/google-research/language)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：Shared repository for open-sourced projects from the Google AI Language team. 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>3. Tooling for agile modeling on large machine perception embedding databases.</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**120**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/google-research/perch-hoplite)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：Tooling for agile modeling on large machine perception embedding databases. 可通过原始链接查看完整项目、论文或数据说明。

</details>

</details>

### Meta（2）

<details>
<summary><img src="https://github.com/facebookresearch.png?size=160" width="32" height="32" alt="Fundamental AI Research (FAIR) logo"> &nbsp;<strong>Fundamental AI Research (FAIR)</strong> · <code>verified</code></summary>

<br>

Fundamental AI Research (FAIR) 隶属于 Meta，是一支主要关注基础模型、多模态学习、计算机视觉等方向的企业研究实验室。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** Meta
- **主要方向：** 基础模型、多模态学习、计算机视觉、AI for Science
- **负责人：** [负责人/成员页](https://ai.meta.com/research/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://ai.meta.com/research/) · [GitHub](https://github.com/facebookresearch)

#### 最近工作 · 2025

<details>
<summary><strong>1. VGGT: Visual Geometry Grounded Transformer</strong> · arXiv (Cornell University) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22VGGT%3A+Visual+Geometry+Grounded+Transformer%22)（未缓存未经核验的数字）
- GitHub Stars：**14046**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2503.11651)

**基于 Abstract 的 TL;DR**

VGGT是一种能够直接从视图中推导场景的3D属性，包括相机参数、点云、深度图和3D点轨迹。该方法在多个3D任务上取得了state-of-the-art结果，并且具有简单高效的特性，可以在一秒内重构图像。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2503.11651"><img src="https://ar5iv.labs.arxiv.org/html/2503.11651/assets/x2.png" alt="Figure 2 : Architecture Overview. Our model first patchifies the input images into tokens by DINO, and appends camera tokens for camera prediction. It then alternates between frame-wise and global self attention layers. A camera head makes the final prediction for camera extrinsics and intrinsics, and a DPT  [ 87 ] head for any dense output." width="720"></a>

> Figure 2 : Architecture Overview. Our model first patchifies the input images into tokens by DINO, and appends camera tokens for camera prediction. It then alternates between frame-wise and global self attention layers. A camera head makes the final prediction for camera extrinsics and intrinsics, and a DPT  [ 87 ] head for any dense output.
> 来源：[原论文](https://arxiv.org/abs/2503.11651)

</details>

#### 代表作

<details>
<summary><strong>1. VGGT: Visual Geometry Grounded Transformer</strong> · arXiv (Cornell University) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22VGGT%3A+Visual+Geometry+Grounded+Transformer%22)（未缓存未经核验的数字）
- GitHub Stars：**14046**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2503.11651)

**基于 Abstract 的 TL;DR**

VGGT是一种能够直接从视图中推导场景的3D属性，包括相机参数、点云、深度图和3D点轨迹。该方法在多个3D任务上取得了state-of-the-art结果，并且具有简单高效的特性，可以在一秒内重构图像。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2503.11651"><img src="https://ar5iv.labs.arxiv.org/html/2503.11651/assets/x2.png" alt="Figure 2 : Architecture Overview. Our model first patchifies the input images into tokens by DINO, and appends camera tokens for camera prediction. It then alternates between frame-wise and global self attention layers. A camera head makes the final prediction for camera extrinsics and intrinsics, and a DPT  [ 87 ] head for any dense output." width="720"></a>

> Figure 2 : Architecture Overview. Our model first patchifies the input images into tokens by DINO, and appends camera tokens for camera prediction. It then alternates between frame-wise and global self attention layers. A camera head makes the final prediction for camera extrinsics and intrinsics, and a DPT  [ 87 ] head for any dense output.
> 来源：[原论文](https://arxiv.org/abs/2503.11651)

</details>

<details>
<summary><strong>2. [CVPR 2026 Oral] VGGT Omega</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**3717**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/facebookresearch/vggt-omega)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：[CVPR 2026 Oral] VGGT Omega 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>3. Navigation World Models</strong> · arXiv (Cornell University) · 2024</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Navigation+World+Models%22)（未缓存未经核验的数字）
- GitHub Stars：**658**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2412.03572)

**基于 Abstract 的 TL;DR**

以下是简要的 TL;DR : 该研究引入了 Navigation World Model（NWM），一种可以预测未来视觉观察结果的可控制视频生成模型。NWM使用Conditional 扩散 Transformer（CDiT）来捕捉复杂环境动态，通过模拟和评估导航轨迹来规划导航轨迹。在实验中，NWM证明了在熟悉环境中有效地规划导航轨迹，并且可以动态 incorporate约束。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2412.03572"><img src="https://ar5iv.labs.arxiv.org/html/2412.03572/assets/x1.png" alt="Figure 1 : We train a Navigation World Model (NWM) from video footage of robots and their associated navigation actions (a). After training, NWM can evaluate trajectories by synthesizing their videos and scoring the final frame’s similarity with the goal (b). We use NWM to plan from scratch or rank experts navigation trajectories, improving downstream visual navigation performance. In unknown environments, NWM can simulate imagined trajectories from a single image (c). In all examples above, the input to the model is the first image and actions, then the model auto-regressively synthesizes future observations. Click on the image to view examples in a browser ." width="720"></a>

> Figure 1 : We train a Navigation World Model (NWM) from video footage of robots and their associated navigation actions (a). After training, NWM can evaluate trajectories by synthesizing their videos and scoring the final frame’s similarity with the goal (b). We use NWM to plan from scratch or rank experts navigation trajectories, improving downstream visual navigation performance. In unknown environments, NWM can simulate imagined trajectories from a single image (c). In all examples above, the input to the model is the first image and actions, then the model auto-regressively synthesizes future observations. Click on the image to view examples in a browser .
> 来源：[原论文](https://arxiv.org/abs/2412.03572)

</details>

</details>

<details>
<summary><img src="https://github.com/facebookresearch.png?size=160" width="32" height="32" alt="Meta Reality Labs Research logo"> &nbsp;<strong>Meta Reality Labs Research</strong> · <code>verified</code></summary>

<br>

Meta Reality Labs Research 隶属于 Meta，是一支主要关注增强现实、计算机视觉、具身智能等方向的企业研究实验室。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** Meta
- **主要方向：** 增强现实、计算机视觉、具身智能、人机交互
- **负责人：** [负责人/成员页](https://about.meta.com/realitylabs/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://about.meta.com/realitylabs/) · [GitHub](https://github.com/facebookresearch)

#### 最近工作 · 2025

<details>
<summary><strong>1. VGGT: Visual Geometry Grounded Transformer</strong> · arXiv (Cornell University) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22VGGT%3A+Visual+Geometry+Grounded+Transformer%22)（未缓存未经核验的数字）
- GitHub Stars：**14046**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2503.11651)

**基于 Abstract 的 TL;DR**

研究者提出了VGGT，一个能够直接从单个视图或多个视图中推导场景的3D属性，包括相机参数、点云、深度图和3D点轨迹。该方法在多个3D任务上取得了state-of-the-art结果，并且具有简单高效的特性，可以在一秒内重建图像。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2503.11651"><img src="https://ar5iv.labs.arxiv.org/html/2503.11651/assets/x2.png" alt="Figure 2 : Architecture Overview. Our model first patchifies the input images into tokens by DINO, and appends camera tokens for camera prediction. It then alternates between frame-wise and global self attention layers. A camera head makes the final prediction for camera extrinsics and intrinsics, and a DPT  [ 87 ] head for any dense output." width="720"></a>

> Figure 2 : Architecture Overview. Our model first patchifies the input images into tokens by DINO, and appends camera tokens for camera prediction. It then alternates between frame-wise and global self attention layers. A camera head makes the final prediction for camera extrinsics and intrinsics, and a DPT  [ 87 ] head for any dense output.
> 来源：[原论文](https://arxiv.org/abs/2503.11651)

</details>

#### 代表作

<details>
<summary><strong>1. VGGT: Visual Geometry Grounded Transformer</strong> · arXiv (Cornell University) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22VGGT%3A+Visual+Geometry+Grounded+Transformer%22)（未缓存未经核验的数字）
- GitHub Stars：**14046**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2503.11651)

**基于 Abstract 的 TL;DR**

研究者提出了VGGT，一个能够直接从单个视图或多个视图中推导场景的3D属性，包括相机参数、点云、深度图和3D点轨迹。该方法在多个3D任务上取得了state-of-the-art结果，并且具有简单高效的特性，可以在一秒内重建图像。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2503.11651"><img src="https://ar5iv.labs.arxiv.org/html/2503.11651/assets/x2.png" alt="Figure 2 : Architecture Overview. Our model first patchifies the input images into tokens by DINO, and appends camera tokens for camera prediction. It then alternates between frame-wise and global self attention layers. A camera head makes the final prediction for camera extrinsics and intrinsics, and a DPT  [ 87 ] head for any dense output." width="720"></a>

> Figure 2 : Architecture Overview. Our model first patchifies the input images into tokens by DINO, and appends camera tokens for camera prediction. It then alternates between frame-wise and global self attention layers. A camera head makes the final prediction for camera extrinsics and intrinsics, and a DPT  [ 87 ] head for any dense output.
> 来源：[原论文](https://arxiv.org/abs/2503.11651)

</details>

<details>
<summary><strong>2. [CVPR 2026 Oral] VGGT Omega</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**3717**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/facebookresearch/vggt-omega)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：[CVPR 2026 Oral] VGGT Omega 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>3. Navigation World Models</strong> · arXiv (Cornell University) · 2024</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Navigation+World+Models%22)（未缓存未经核验的数字）
- GitHub Stars：**658**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2412.03572)

**基于 Abstract 的 TL;DR**

该研究引入了Navigation World Model（NWM），一种可控制的视频生成模型，能够预测未来视觉观察值基于过去观察值和导航行为。NWM使用条件分辉Transformer（CDiT）来捕捉复杂环境动态，利用人机双方的多样化视频数据，并将参数规模扩大到1亿。实验结果表明，在熟悉环境中，NWM可以通过模拟导航轨迹并评估是否达到目标来规划导航轨迹。与固定行为的监督导航策略不同，NWM可以在规划过程中动态包含约束。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2412.03572"><img src="https://ar5iv.labs.arxiv.org/html/2412.03572/assets/x1.png" alt="Figure 1 : We train a Navigation World Model (NWM) from video footage of robots and their associated navigation actions (a). After training, NWM can evaluate trajectories by synthesizing their videos and scoring the final frame’s similarity with the goal (b). We use NWM to plan from scratch or rank experts navigation trajectories, improving downstream visual navigation performance. In unknown environments, NWM can simulate imagined trajectories from a single image (c). In all examples above, the input to the model is the first image and actions, then the model auto-regressively synthesizes future observations. Click on the image to view examples in a browser ." width="720"></a>

> Figure 1 : We train a Navigation World Model (NWM) from video footage of robots and their associated navigation actions (a). After training, NWM can evaluate trajectories by synthesizing their videos and scoring the final frame’s similarity with the goal (b). We use NWM to plan from scratch or rank experts navigation trajectories, improving downstream visual navigation performance. In unknown environments, NWM can simulate imagined trajectories from a single image (c). In all examples above, the input to the model is the first image and actions, then the model auto-regressively synthesizes future observations. Click on the image to view examples in a browser .
> 来源：[原论文](https://arxiv.org/abs/2412.03572)

</details>

</details>

### Microsoft（5）

<details>
<summary><img src="https://github.com/microsoft.png?size=160" width="32" height="32" alt="Microsoft Research AI Frontiers logo"> &nbsp;<strong>Microsoft Research AI Frontiers</strong> · <code>verified</code></summary>

<br>

Microsoft Research AI Frontiers 隶属于 Microsoft，是一支主要关注基础模型、智能体、机器推理等方向的企业研究实验室。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** Microsoft
- **主要方向：** 基础模型、智能体、机器推理、模型评估
- **负责人：** [负责人/成员页](https://www.microsoft.com/en-us/research/project/ai-frontiers-explorations/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://www.microsoft.com/en-us/research/project/ai-frontiers-explorations/) · [GitHub](https://github.com/microsoft)

#### 最近工作 · 2025

<details>
<summary><strong>1. Scalable Vision-Language-Action Model Pretraining for Robotic Manipulation with Real-Life Human Activity Videos</strong> · arXiv (Cornell University) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Scalable+Vision-Language-Action+Model+Pretraining+for+Robotic+Manipulation+with+Real-Life+Human+Activity+Videos%22)（未缓存未经核验的数字）
- GitHub Stars：**454**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2510.21571)

**基于 Abstract 的 TL;DR**

该研究探讨了如何使用未注释的现实生活视频来预训练视觉-语言-动作（VLA）模型。研究人员开发了一种全自动的人类手活动分析方法，可以将人类手的动作段和语言描述与每个帧的3D手部运动和相机运动关联起来。这一方法生成了1M集和26M帧的数据，覆盖了现有机器人数据的100倍。研究结果表明，该模型在未见过的现实世界观察中表现出强大的零-shot能力，并且通过 fine-tuning 在小规模的机器人动作数据上，能够显著提高任务成功率和对新物体的 generalizeability。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2510.21571"><img src="https://ar5iv.labs.arxiv.org/html/2510.21571/assets/x2.png" alt="Figure 2 : Overview of our holistic human activity analysis framework, which transforms unscripted real-life human videos into V-L-A episodes of human hands aligned with typical robotic data via three stages: (a) 3D motion labeling, reconstructing metric-scale 3D hand and camera trajectories; (b) atomic action segmentation, dividing videos into atomic-level clips; and (c) instruction labeling, employing GPT to annotate action instructions for each clip." width="720"></a>

> Figure 2 : Overview of our holistic human activity analysis framework, which transforms unscripted real-life human videos into V-L-A episodes of human hands aligned with typical robotic data via three stages: (a) 3D motion labeling, reconstructing metric-scale 3D hand and camera trajectories; (b) atomic action segmentation, dividing videos into atomic-level clips; and (c) instruction labeling, employing GPT to annotate action instructions for each clip.
> 来源：[原论文](https://arxiv.org/abs/2510.21571)

</details>

#### 代表作

<details>
<summary><strong>1. Scalable Vision-Language-Action Model Pretraining for Robotic Manipulation with Real-Life Human Activity Videos</strong> · arXiv (Cornell University) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Scalable+Vision-Language-Action+Model+Pretraining+for+Robotic+Manipulation+with+Real-Life+Human+Activity+Videos%22)（未缓存未经核验的数字）
- GitHub Stars：**454**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2510.21571)

**基于 Abstract 的 TL;DR**

该研究探讨了如何使用未注释的现实生活视频来预训练视觉-语言-动作（VLA）模型。研究人员开发了一种全自动的人类手活动分析方法，可以将人类手的动作段和语言描述与每个帧的3D手部运动和相机运动关联起来。这一方法生成了1M集和26M帧的数据，覆盖了现有机器人数据的100倍。研究结果表明，该模型在未见过的现实世界观察中表现出强大的零-shot能力，并且通过 fine-tuning 在小规模的机器人动作数据上，能够显著提高任务成功率和对新物体的 generalizeability。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2510.21571"><img src="https://ar5iv.labs.arxiv.org/html/2510.21571/assets/x2.png" alt="Figure 2 : Overview of our holistic human activity analysis framework, which transforms unscripted real-life human videos into V-L-A episodes of human hands aligned with typical robotic data via three stages: (a) 3D motion labeling, reconstructing metric-scale 3D hand and camera trajectories; (b) atomic action segmentation, dividing videos into atomic-level clips; and (c) instruction labeling, employing GPT to annotate action instructions for each clip." width="720"></a>

> Figure 2 : Overview of our holistic human activity analysis framework, which transforms unscripted real-life human videos into V-L-A episodes of human hands aligned with typical robotic data via three stages: (a) 3D motion labeling, reconstructing metric-scale 3D hand and camera trajectories; (b) atomic action segmentation, dividing videos into atomic-level clips; and (c) instruction labeling, employing GPT to annotate action instructions for each clip.
> 来源：[原论文](https://arxiv.org/abs/2510.21571)

</details>

<details>
<summary><strong>2. Structured 3D Latents for Scalable and Versatile 3D Generation</strong> · arXiv (Cornell University) · 2024</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Structured+3D+Latents+for+Scalable+and+Versatile+3D+Generation%22)（未缓存未经核验的数字）
- GitHub Stars：**13317**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2412.01506)

**基于 Abstract 的 TL;DR**

该研究引入了一种新颖的3D生成方法，用于创造高质量和多样性的3D资产。该方法使用统一的结构化潜在值（SLAT）表示来实现不同输出格式的解码，如辐射场、3D高斯分布和网格。该方法通过整合稀疏的3D网格与强大的视觉基础模型中多视图可视特征的密集表达来捕捉结构（几何）和表面（颜色）信息，同时保持解码灵活性。研究人员使用适应SLAT的直流变换器为3D生成模型，利用2亿参数的模型在500万多个多样化对象的大型3D资产数据上进行训练。该方法产生高质量的结果，并且可以根据文本或图像条件生成。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2412.01506"><img src="https://ar5iv.labs.arxiv.org/html/2412.01506/assets/x2.png" alt="Figure 2 : Overview of our method. Encoding &amp; Decoding: We adopt a structured latent representation ( SLat ) for 3D assets encoding, which defines local latents on a sparse 3D grid to represent both geometry and appearance information. It is encoded from the 3D assets by fusing and processing dense multiview visual features extracted from a DINOv2 encoder, and can be decoded into versatile output representations with different decoders. Generation: Two specialized rectified flow transformers are utilized to generate SLat , one for the sparse structure and the other for local latents attached to it." width="720"></a>

> Figure 2 : Overview of our method. Encoding &amp; Decoding: We adopt a structured latent representation ( SLat ) for 3D assets encoding, which defines local latents on a sparse 3D grid to represent both geometry and appearance information. It is encoded from the 3D assets by fusing and processing dense multiview visual features extracted from a DINOv2 encoder, and can be decoded into versatile output representations with different decoders. Generation: Two specialized rectified flow transformers are utilized to generate SLat , one for the sparse structure and the other for local latents attached to it.
> 来源：[原论文](https://arxiv.org/abs/2412.01506)

</details>

<details>
<summary><strong>3. 12 Weeks, 24 Lessons, AI for All!</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**53008**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/microsoft/AI-For-Beginners)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：12 Weeks, 24 Lessons, AI for All! 可通过原始链接查看完整项目、论文或数据说明。

</details>

</details>

<details>
<summary><img src="https://github.com/microsoft.png?size=160" width="32" height="32" alt="Microsoft Research Asia — General Artificial Intelligence logo"> &nbsp;<strong>Microsoft Research Asia — General Artificial Intelligence</strong> · <code>verified</code></summary>

<br>

Microsoft Research Asia — General Artificial Intelligence 隶属于 Microsoft，是一支主要关注基础模型、自然语言处理、语音技术等方向的企业研究团队。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** Microsoft
- **主要方向：** 基础模型、自然语言处理、语音技术、多模态学习
- **负责人：** [负责人/成员页](https://www.microsoft.com/en-us/research/group/general-artificial-intelligence/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://www.microsoft.com/en-us/research/group/general-artificial-intelligence/) · [GitHub](https://github.com/microsoft/unilm)

#### 最近工作 · 2025

<details>
<summary><strong>1. Scalable Vision-Language-Action Model Pretraining for Robotic Manipulation with Real-Life Human Activity Videos</strong> · arXiv (Cornell University) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Scalable+Vision-Language-Action+Model+Pretraining+for+Robotic+Manipulation+with+Real-Life+Human+Activity+Videos%22)（未缓存未经核验的数字）
- GitHub Stars：**454**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2510.21571)

**基于 Abstract 的 TL;DR**

该研究探讨了如何使用未注释的现实生活视频来预训练视觉-语言-动作（VLA）模型。通过开发一个自动化的人类手部活动分析方法，可以将未注释的视频转换为与现有机器人V-L-A培训数据相符的格式。这一方法可以生成手部活动段和其语言描述，各 accompanied byframewise 3D 手部运动和摄像头运动。该研究创建了一个包含1M集和26M帧的手部-VLA培训数据集，这个数据集覆盖了现有机器人数据的多倍。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2510.21571"><img src="https://ar5iv.labs.arxiv.org/html/2510.21571/assets/x2.png" alt="Figure 2 : Overview of our holistic human activity analysis framework, which transforms unscripted real-life human videos into V-L-A episodes of human hands aligned with typical robotic data via three stages: (a) 3D motion labeling, reconstructing metric-scale 3D hand and camera trajectories; (b) atomic action segmentation, dividing videos into atomic-level clips; and (c) instruction labeling, employing GPT to annotate action instructions for each clip." width="720"></a>

> Figure 2 : Overview of our holistic human activity analysis framework, which transforms unscripted real-life human videos into V-L-A episodes of human hands aligned with typical robotic data via three stages: (a) 3D motion labeling, reconstructing metric-scale 3D hand and camera trajectories; (b) atomic action segmentation, dividing videos into atomic-level clips; and (c) instruction labeling, employing GPT to annotate action instructions for each clip.
> 来源：[原论文](https://arxiv.org/abs/2510.21571)

</details>

#### 代表作

<details>
<summary><strong>1. Scalable Vision-Language-Action Model Pretraining for Robotic Manipulation with Real-Life Human Activity Videos</strong> · arXiv (Cornell University) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Scalable+Vision-Language-Action+Model+Pretraining+for+Robotic+Manipulation+with+Real-Life+Human+Activity+Videos%22)（未缓存未经核验的数字）
- GitHub Stars：**454**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2510.21571)

**基于 Abstract 的 TL;DR**

该研究探讨了如何使用未注释的现实生活视频来预训练视觉-语言-动作（VLA）模型。通过开发一个自动化的人类手部活动分析方法，可以将未注释的视频转换为与现有机器人V-L-A培训数据相符的格式。这一方法可以生成手部活动段和其语言描述，各 accompanied byframewise 3D 手部运动和摄像头运动。该研究创建了一个包含1M集和26M帧的手部-VLA培训数据集，这个数据集覆盖了现有机器人数据的多倍。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2510.21571"><img src="https://ar5iv.labs.arxiv.org/html/2510.21571/assets/x2.png" alt="Figure 2 : Overview of our holistic human activity analysis framework, which transforms unscripted real-life human videos into V-L-A episodes of human hands aligned with typical robotic data via three stages: (a) 3D motion labeling, reconstructing metric-scale 3D hand and camera trajectories; (b) atomic action segmentation, dividing videos into atomic-level clips; and (c) instruction labeling, employing GPT to annotate action instructions for each clip." width="720"></a>

> Figure 2 : Overview of our holistic human activity analysis framework, which transforms unscripted real-life human videos into V-L-A episodes of human hands aligned with typical robotic data via three stages: (a) 3D motion labeling, reconstructing metric-scale 3D hand and camera trajectories; (b) atomic action segmentation, dividing videos into atomic-level clips; and (c) instruction labeling, employing GPT to annotate action instructions for each clip.
> 来源：[原论文](https://arxiv.org/abs/2510.21571)

</details>

<details>
<summary><strong>2. Structured 3D Latents for Scalable and Versatile 3D Generation</strong> · arXiv (Cornell University) · 2024</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Structured+3D+Latents+for+Scalable+and+Versatile+3D+Generation%22)（未缓存未经核验的数字）
- GitHub Stars：**13317**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2412.01506)

**基于 Abstract 的 TL;DR**

我们提出了一种新颖的3D生成方法，用于创造高质量和多样性的3D资产。该方法基于统一的结构化潜在值（SLAT）表示，这使得可以解码不同输出格式，如辐射场、3D高斯分布和网格。这种方法通过整合稀疏的3D网格与从强大视觉基础模型中提取的密集多视图视觉特征来实现，既捕捉了结构信息（几何）也捕捉了表面信息（颜色）。我们使用适应SLAT的直化流转器为我们的3D生成模型，并在500K多样性的3D资产大型数据集上训练模型，达到2亿参数。该模型在文本或图像条件下产生高质量结果，远超现有方法，包括最近的方法。我们展示了输出格式选择的灵活性和局部3D编辑能力，这些功能不被之前的模型

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2412.01506"><img src="https://ar5iv.labs.arxiv.org/html/2412.01506/assets/x2.png" alt="Figure 2 : Overview of our method. Encoding &amp; Decoding: We adopt a structured latent representation ( SLat ) for 3D assets encoding, which defines local latents on a sparse 3D grid to represent both geometry and appearance information. It is encoded from the 3D assets by fusing and processing dense multiview visual features extracted from a DINOv2 encoder, and can be decoded into versatile output representations with different decoders. Generation: Two specialized rectified flow transformers are utilized to generate SLat , one for the sparse structure and the other for local latents attached to it." width="720"></a>

> Figure 2 : Overview of our method. Encoding &amp; Decoding: We adopt a structured latent representation ( SLat ) for 3D assets encoding, which defines local latents on a sparse 3D grid to represent both geometry and appearance information. It is encoded from the 3D assets by fusing and processing dense multiview visual features extracted from a DINOv2 encoder, and can be decoded into versatile output representations with different decoders. Generation: Two specialized rectified flow transformers are utilized to generate SLat , one for the sparse structure and the other for local latents attached to it.
> 来源：[原论文](https://arxiv.org/abs/2412.01506)

</details>

<details>
<summary><strong>3. 12 Weeks, 24 Lessons, AI for All!</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**53008**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/microsoft/AI-For-Beginners)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：12 Weeks, 24 Lessons, AI for All! 可通过原始链接查看完整项目、论文或数据说明。

</details>

</details>

<details>
<summary><img src="https://github.com/microsoft.png?size=160" width="32" height="32" alt="Microsoft Research AI for Science logo"> &nbsp;<strong>Microsoft Research AI for Science</strong> · <code>verified</code></summary>

<br>

Microsoft Research AI for Science 隶属于 Microsoft，是一支主要关注AI for Science、基础模型、计算化学等方向的企业研究实验室。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** Microsoft
- **主要方向：** AI for Science、基础模型、计算化学、计算生物学
- **负责人：** [负责人/成员页](https://www.microsoft.com/en-us/research/lab/microsoft-research-ai-for-science/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://www.microsoft.com/en-us/research/lab/microsoft-research-ai-for-science/) · [GitHub](https://github.com/microsoft)

#### 最近工作 · 2025

<details>
<summary><strong>1. Scalable Vision-Language-Action Model Pretraining for Robotic Manipulation with Real-Life Human Activity Videos</strong> · arXiv (Cornell University) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Scalable+Vision-Language-Action+Model+Pretraining+for+Robotic+Manipulation+with+Real-Life+Human+Activity+Videos%22)（未缓存未经核验的数字）
- GitHub Stars：**454**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2510.21571)

**基于 Abstract 的 TL;DR**

该研究探讨了如何使用未注释的现实生活视频来预训练视觉-语言-动作（VLA）模型。研究人员开发了一种全自动的人类手部活动分析方法，可以将未注释的视频转换为与现有机器人V-L-A训练数据相符的格式。这一方法可以生成手部活动段和其语言描述，各 accompanied byframewise 3D 手部运动和摄像头运动。该研究创建了一个包含1M集和26M帧的手部-VLA训练数据集，这个数据集覆盖了现有机器人数据的多倍。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2510.21571"><img src="https://ar5iv.labs.arxiv.org/html/2510.21571/assets/x2.png" alt="Figure 2 : Overview of our holistic human activity analysis framework, which transforms unscripted real-life human videos into V-L-A episodes of human hands aligned with typical robotic data via three stages: (a) 3D motion labeling, reconstructing metric-scale 3D hand and camera trajectories; (b) atomic action segmentation, dividing videos into atomic-level clips; and (c) instruction labeling, employing GPT to annotate action instructions for each clip." width="720"></a>

> Figure 2 : Overview of our holistic human activity analysis framework, which transforms unscripted real-life human videos into V-L-A episodes of human hands aligned with typical robotic data via three stages: (a) 3D motion labeling, reconstructing metric-scale 3D hand and camera trajectories; (b) atomic action segmentation, dividing videos into atomic-level clips; and (c) instruction labeling, employing GPT to annotate action instructions for each clip.
> 来源：[原论文](https://arxiv.org/abs/2510.21571)

</details>

#### 代表作

<details>
<summary><strong>1. Scalable Vision-Language-Action Model Pretraining for Robotic Manipulation with Real-Life Human Activity Videos</strong> · arXiv (Cornell University) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Scalable+Vision-Language-Action+Model+Pretraining+for+Robotic+Manipulation+with+Real-Life+Human+Activity+Videos%22)（未缓存未经核验的数字）
- GitHub Stars：**454**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2510.21571)

**基于 Abstract 的 TL;DR**

该研究探讨了如何使用未注释的现实生活视频来预训练视觉-语言-动作（VLA）模型。研究人员开发了一种全自动的人类手部活动分析方法，可以将未注释的视频转换为与现有机器人V-L-A训练数据相符的格式。这一方法可以生成手部活动段和其语言描述，各 accompanied byframewise 3D 手部运动和摄像头运动。该研究创建了一个包含1M集和26M帧的手部-VLA训练数据集，这个数据集覆盖了现有机器人数据的多倍。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2510.21571"><img src="https://ar5iv.labs.arxiv.org/html/2510.21571/assets/x2.png" alt="Figure 2 : Overview of our holistic human activity analysis framework, which transforms unscripted real-life human videos into V-L-A episodes of human hands aligned with typical robotic data via three stages: (a) 3D motion labeling, reconstructing metric-scale 3D hand and camera trajectories; (b) atomic action segmentation, dividing videos into atomic-level clips; and (c) instruction labeling, employing GPT to annotate action instructions for each clip." width="720"></a>

> Figure 2 : Overview of our holistic human activity analysis framework, which transforms unscripted real-life human videos into V-L-A episodes of human hands aligned with typical robotic data via three stages: (a) 3D motion labeling, reconstructing metric-scale 3D hand and camera trajectories; (b) atomic action segmentation, dividing videos into atomic-level clips; and (c) instruction labeling, employing GPT to annotate action instructions for each clip.
> 来源：[原论文](https://arxiv.org/abs/2510.21571)

</details>

<details>
<summary><strong>2. Structured 3D Latents for Scalable and Versatile 3D Generation</strong> · arXiv (Cornell University) · 2024</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Structured+3D+Latents+for+Scalable+and+Versatile+3D+Generation%22)（未缓存未经核验的数字）
- GitHub Stars：**13317**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2412.01506)

**基于 Abstract 的 TL;DR**

我们提出了一种新颖的3D生成方法，旨在为多样化和高质量的3D资产创造。该方法基于统一的结构性LAT（SLAT）表示形式，可以解码不同输出格式，如辐射场、3D高斯分布和网格。这种方法通过整合稀疏的3D网格与从强大视觉基础模型中提取的密集多视图视觉特征，有效地捕捉了结构（几何）和表面（颜色）信息，同时保持解码灵活性。我们使用适应SLAT的直角流转器为3D生成模型，并在500K多样化对象的大型3D资产数据集上训练模型，达到2亿参数的最大值。我们的模型在文本或图像条件下产生高质量结果，远超现有方法，包括最近的方法。我们展示了可选择输出格式和局部3D编辑能力，这些功能不被之前

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2412.01506"><img src="https://ar5iv.labs.arxiv.org/html/2412.01506/assets/x2.png" alt="Figure 2 : Overview of our method. Encoding &amp; Decoding: We adopt a structured latent representation ( SLat ) for 3D assets encoding, which defines local latents on a sparse 3D grid to represent both geometry and appearance information. It is encoded from the 3D assets by fusing and processing dense multiview visual features extracted from a DINOv2 encoder, and can be decoded into versatile output representations with different decoders. Generation: Two specialized rectified flow transformers are utilized to generate SLat , one for the sparse structure and the other for local latents attached to it." width="720"></a>

> Figure 2 : Overview of our method. Encoding &amp; Decoding: We adopt a structured latent representation ( SLat ) for 3D assets encoding, which defines local latents on a sparse 3D grid to represent both geometry and appearance information. It is encoded from the 3D assets by fusing and processing dense multiview visual features extracted from a DINOv2 encoder, and can be decoded into versatile output representations with different decoders. Generation: Two specialized rectified flow transformers are utilized to generate SLat , one for the sparse structure and the other for local latents attached to it.
> 来源：[原论文](https://arxiv.org/abs/2412.01506)

</details>

<details>
<summary><strong>3. 12 Weeks, 24 Lessons, AI for All!</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**53008**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/microsoft/AI-For-Beginners)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：12 Weeks, 24 Lessons, AI for All! 可通过原始链接查看完整项目、论文或数据说明。

</details>

</details>

<details>
<summary><img src="https://github.com/microsoft.png?size=160" width="32" height="32" alt="Microsoft Research — Machine Learning Area logo"> &nbsp;<strong>Microsoft Research — Machine Learning Area</strong> · <code>verified</code></summary>

<br>

Microsoft Research — Machine Learning Area 隶属于 Microsoft，是一支主要关注机器学习、强化学习、因果学习等方向的企业研究团队。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** Microsoft
- **主要方向：** 机器学习、强化学习、因果学习、优化方法
- **负责人：** [负责人/成员页](https://www.microsoft.com/en-us/research/group/machine-learning-research-group/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://www.microsoft.com/en-us/research/group/machine-learning-research-group/) · [GitHub](https://github.com/microsoft)

#### 最近工作 · 2025

<details>
<summary><strong>1. Scalable Vision-Language-Action Model Pretraining for Robotic Manipulation with Real-Life Human Activity Videos</strong> · arXiv (Cornell University) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Scalable+Vision-Language-Action+Model+Pretraining+for+Robotic+Manipulation+with+Real-Life+Human+Activity+Videos%22)（未缓存未经核验的数字）
- GitHub Stars：**454**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2510.21571)

**基于 Abstract 的 TL;DR**

该研究探讨了如何使用未注释的现实生活视频来预训练视觉-语言-动作（VLA）模型。研究人员开发了一种全自动的人类手部活动分析方法，可以将未注释的视频转换为与现有机器人V-L-A数据格式一致的数据。通过这种方法，研究人员创建了一个包含1M个episode和26M帧的手部VLA训练数据集，这大大超过了现有的机器人数据。预训练模型在未见过的现实世界观察上表现出强大的零-shot能力，并且在 fine-tuning 上可以显著提高任务成功率和对新物体的 generalizeability。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2510.21571"><img src="https://ar5iv.labs.arxiv.org/html/2510.21571/assets/x2.png" alt="Figure 2 : Overview of our holistic human activity analysis framework, which transforms unscripted real-life human videos into V-L-A episodes of human hands aligned with typical robotic data via three stages: (a) 3D motion labeling, reconstructing metric-scale 3D hand and camera trajectories; (b) atomic action segmentation, dividing videos into atomic-level clips; and (c) instruction labeling, employing GPT to annotate action instructions for each clip." width="720"></a>

> Figure 2 : Overview of our holistic human activity analysis framework, which transforms unscripted real-life human videos into V-L-A episodes of human hands aligned with typical robotic data via three stages: (a) 3D motion labeling, reconstructing metric-scale 3D hand and camera trajectories; (b) atomic action segmentation, dividing videos into atomic-level clips; and (c) instruction labeling, employing GPT to annotate action instructions for each clip.
> 来源：[原论文](https://arxiv.org/abs/2510.21571)

</details>

#### 代表作

<details>
<summary><strong>1. Scalable Vision-Language-Action Model Pretraining for Robotic Manipulation with Real-Life Human Activity Videos</strong> · arXiv (Cornell University) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Scalable+Vision-Language-Action+Model+Pretraining+for+Robotic+Manipulation+with+Real-Life+Human+Activity+Videos%22)（未缓存未经核验的数字）
- GitHub Stars：**454**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2510.21571)

**基于 Abstract 的 TL;DR**

该研究探讨了如何使用未注释的现实生活视频来预训练视觉-语言-动作（VLA）模型。研究人员开发了一种全自动的人类手部活动分析方法，可以将未注释的视频转换为与现有机器人V-L-A数据格式一致的数据。通过这种方法，研究人员创建了一个包含1M个episode和26M帧的手部VLA训练数据集，这大大超过了现有的机器人数据。预训练模型在未见过的现实世界观察上表现出强大的零-shot能力，并且在 fine-tuning 上可以显著提高任务成功率和对新物体的 generalizeability。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2510.21571"><img src="https://ar5iv.labs.arxiv.org/html/2510.21571/assets/x2.png" alt="Figure 2 : Overview of our holistic human activity analysis framework, which transforms unscripted real-life human videos into V-L-A episodes of human hands aligned with typical robotic data via three stages: (a) 3D motion labeling, reconstructing metric-scale 3D hand and camera trajectories; (b) atomic action segmentation, dividing videos into atomic-level clips; and (c) instruction labeling, employing GPT to annotate action instructions for each clip." width="720"></a>

> Figure 2 : Overview of our holistic human activity analysis framework, which transforms unscripted real-life human videos into V-L-A episodes of human hands aligned with typical robotic data via three stages: (a) 3D motion labeling, reconstructing metric-scale 3D hand and camera trajectories; (b) atomic action segmentation, dividing videos into atomic-level clips; and (c) instruction labeling, employing GPT to annotate action instructions for each clip.
> 来源：[原论文](https://arxiv.org/abs/2510.21571)

</details>

<details>
<summary><strong>2. Structured 3D Latents for Scalable and Versatile 3D Generation</strong> · arXiv (Cornell University) · 2024</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Structured+3D+Latents+for+Scalable+and+Versatile+3D+Generation%22)（未缓存未经核验的数字）
- GitHub Stars：**13317**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2412.01506)

**基于 Abstract 的 TL;DR**

该研究提出了一种新颖的3D生成方法，能够产生高质量和多样性的3D资产。该方法基于统一的结构化潜在值（SLAT）表示，从而可以解码为不同输出格式，如辐射场、3D高斯分布和网格。该方法结合稀疏的3D网格与dense的多视图视觉特征，能够捕捉结构信息和表面信息。研究人员使用适合SLAT的流形变换模型，并在500K多样化对象的大型3D资产数据上训练了具有2亿参数的模型。该方法产生高质量结果，并且可以选择不同输出格式和局部编辑3D对象。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2412.01506"><img src="https://ar5iv.labs.arxiv.org/html/2412.01506/assets/x2.png" alt="Figure 2 : Overview of our method. Encoding &amp; Decoding: We adopt a structured latent representation ( SLat ) for 3D assets encoding, which defines local latents on a sparse 3D grid to represent both geometry and appearance information. It is encoded from the 3D assets by fusing and processing dense multiview visual features extracted from a DINOv2 encoder, and can be decoded into versatile output representations with different decoders. Generation: Two specialized rectified flow transformers are utilized to generate SLat , one for the sparse structure and the other for local latents attached to it." width="720"></a>

> Figure 2 : Overview of our method. Encoding &amp; Decoding: We adopt a structured latent representation ( SLat ) for 3D assets encoding, which defines local latents on a sparse 3D grid to represent both geometry and appearance information. It is encoded from the 3D assets by fusing and processing dense multiview visual features extracted from a DINOv2 encoder, and can be decoded into versatile output representations with different decoders. Generation: Two specialized rectified flow transformers are utilized to generate SLat , one for the sparse structure and the other for local latents attached to it.
> 来源：[原论文](https://arxiv.org/abs/2412.01506)

</details>

<details>
<summary><strong>3. 12 Weeks, 24 Lessons, AI for All!</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**53008**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/microsoft/AI-For-Beginners)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：12 Weeks, 24 Lessons, AI for All! 可通过原始链接查看完整项目、论文或数据说明。

</details>

</details>

<details>
<summary><img src="https://github.com/microsoft.png?size=160" width="32" height="32" alt="Microsoft Research — Computer Vision Group logo"> &nbsp;<strong>Microsoft Research — Computer Vision Group</strong> · <code>verified</code></summary>

<br>

Microsoft Research — Computer Vision Group 隶属于 Microsoft，是一支主要关注计算机视觉、多模态学习、图像生成等方向的企业研究团队。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** Microsoft
- **主要方向：** 计算机视觉、多模态学习、图像生成、视频理解
- **负责人：** [负责人/成员页](https://www.microsoft.com/en-us/research/group/vision/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://www.microsoft.com/en-us/research/group/vision/) · [GitHub](https://github.com/microsoft)

#### 最近工作 · 2025

<details>
<summary><strong>1. Scalable Vision-Language-Action Model Pretraining for Robotic Manipulation with Real-Life Human Activity Videos</strong> · arXiv (Cornell University) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Scalable+Vision-Language-Action+Model+Pretraining+for+Robotic+Manipulation+with+Real-Life+Human+Activity+Videos%22)（未缓存未经核验的数字）
- GitHub Stars：**454**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2510.21571)

**基于 Abstract 的 TL;DR**

该研究探讨了如何使用未注释的现实生活视频来预训练视觉-语言-动作（VLA）模型。研究人员开发了一种全自动的人类手活动分析方法，可以将人类手作为可Manipulation机器人末端，转换为与现有机器人V-L-A培训数据相符的数据格式。这一方法生成了具有语言描述和3D手部运动和摄像头运动的每个手部活动段。该研究创建了一大规模的手部VLA培训数据集，包含1M个场景和26M帧。预训练模型在未见过的现实世界观察上表现出强大的零-shot能力，并且通过 fine-tuning 在小样本的真实机器人动作数据中，提高了任务成功率和对新物体的 generalizeability。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2510.21571"><img src="https://ar5iv.labs.arxiv.org/html/2510.21571/assets/x2.png" alt="Figure 2 : Overview of our holistic human activity analysis framework, which transforms unscripted real-life human videos into V-L-A episodes of human hands aligned with typical robotic data via three stages: (a) 3D motion labeling, reconstructing metric-scale 3D hand and camera trajectories; (b) atomic action segmentation, dividing videos into atomic-level clips; and (c) instruction labeling, employing GPT to annotate action instructions for each clip." width="720"></a>

> Figure 2 : Overview of our holistic human activity analysis framework, which transforms unscripted real-life human videos into V-L-A episodes of human hands aligned with typical robotic data via three stages: (a) 3D motion labeling, reconstructing metric-scale 3D hand and camera trajectories; (b) atomic action segmentation, dividing videos into atomic-level clips; and (c) instruction labeling, employing GPT to annotate action instructions for each clip.
> 来源：[原论文](https://arxiv.org/abs/2510.21571)

</details>

#### 代表作

<details>
<summary><strong>1. Scalable Vision-Language-Action Model Pretraining for Robotic Manipulation with Real-Life Human Activity Videos</strong> · arXiv (Cornell University) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Scalable+Vision-Language-Action+Model+Pretraining+for+Robotic+Manipulation+with+Real-Life+Human+Activity+Videos%22)（未缓存未经核验的数字）
- GitHub Stars：**454**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2510.21571)

**基于 Abstract 的 TL;DR**

该研究探讨了如何使用未注释的现实生活视频来预训练视觉-语言-动作（VLA）模型。研究人员开发了一种全自动的人类手活动分析方法，可以将人类手作为可Manipulation机器人末端，转换为与现有机器人V-L-A培训数据相符的数据格式。这一方法生成了具有语言描述和3D手部运动和摄像头运动的每个手部活动段。该研究创建了一大规模的手部VLA培训数据集，包含1M个场景和26M帧。预训练模型在未见过的现实世界观察上表现出强大的零-shot能力，并且通过 fine-tuning 在小样本的真实机器人动作数据中，提高了任务成功率和对新物体的 generalizeability。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2510.21571"><img src="https://ar5iv.labs.arxiv.org/html/2510.21571/assets/x2.png" alt="Figure 2 : Overview of our holistic human activity analysis framework, which transforms unscripted real-life human videos into V-L-A episodes of human hands aligned with typical robotic data via three stages: (a) 3D motion labeling, reconstructing metric-scale 3D hand and camera trajectories; (b) atomic action segmentation, dividing videos into atomic-level clips; and (c) instruction labeling, employing GPT to annotate action instructions for each clip." width="720"></a>

> Figure 2 : Overview of our holistic human activity analysis framework, which transforms unscripted real-life human videos into V-L-A episodes of human hands aligned with typical robotic data via three stages: (a) 3D motion labeling, reconstructing metric-scale 3D hand and camera trajectories; (b) atomic action segmentation, dividing videos into atomic-level clips; and (c) instruction labeling, employing GPT to annotate action instructions for each clip.
> 来源：[原论文](https://arxiv.org/abs/2510.21571)

</details>

<details>
<summary><strong>2. Structured 3D Latents for Scalable and Versatile 3D Generation</strong> · arXiv (Cornell University) · 2024</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Structured+3D+Latents+for+Scalable+and+Versatile+3D+Generation%22)（未缓存未经核验的数字）
- GitHub Stars：**13317**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2412.01506)

**基于 Abstract 的 TL;DR**

该研究开发了一种新的3D生成方法，能够产生高质量的多样化3D资产。该方法基于统一的结构性LAT（SLAT）表示，可以解码不同输出格式，如辐射场、3D高斯分布和网格。该方法结合稀疏的3D网格与dense的多视图视觉特征，捕捉了结构信息和表面信息，同时保持解码灵活性。研究人员使用适合SLAT的直化流形状转换器作为3D生成模型，并在500K多样化对象的大型3D资产数据集上训练模型，达到2亿参数的最大值。该方法产生了高质量的结果，包括文本或图像条件，远超现有方法，包括最近的方法。研究人员展示了输出格式选择的灵活性和局部3D编辑能力，这些功能在之前的模型中没有实现。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2412.01506"><img src="https://ar5iv.labs.arxiv.org/html/2412.01506/assets/x2.png" alt="Figure 2 : Overview of our method. Encoding &amp; Decoding: We adopt a structured latent representation ( SLat ) for 3D assets encoding, which defines local latents on a sparse 3D grid to represent both geometry and appearance information. It is encoded from the 3D assets by fusing and processing dense multiview visual features extracted from a DINOv2 encoder, and can be decoded into versatile output representations with different decoders. Generation: Two specialized rectified flow transformers are utilized to generate SLat , one for the sparse structure and the other for local latents attached to it." width="720"></a>

> Figure 2 : Overview of our method. Encoding &amp; Decoding: We adopt a structured latent representation ( SLat ) for 3D assets encoding, which defines local latents on a sparse 3D grid to represent both geometry and appearance information. It is encoded from the 3D assets by fusing and processing dense multiview visual features extracted from a DINOv2 encoder, and can be decoded into versatile output representations with different decoders. Generation: Two specialized rectified flow transformers are utilized to generate SLat , one for the sparse structure and the other for local latents attached to it.
> 来源：[原论文](https://arxiv.org/abs/2412.01506)

</details>

<details>
<summary><strong>3. 12 Weeks, 24 Lessons, AI for All!</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**53008**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/microsoft/AI-For-Beginners)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：12 Weeks, 24 Lessons, AI for All! 可通过原始链接查看完整项目、论文或数据说明。

</details>

</details>

### NVIDIA（4）

<details>
<summary><img src="https://github.com/NVlabs.png?size=160" width="32" height="32" alt="NVIDIA Cosmos Lab logo"> &nbsp;<strong>NVIDIA Cosmos Lab</strong> · <code>verified</code></summary>

<br>

NVIDIA Cosmos Lab 隶属于 NVIDIA，是一支主要关注世界模型、物理世界 AI、视频生成等方向的企业研究实验室。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** NVIDIA
- **主要方向：** 世界模型、物理世界 AI、视频生成、具身智能
- **负责人：** [负责人/成员页](https://research.nvidia.com/labs/dir/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://research.nvidia.com/labs/dir/) · [GitHub](https://github.com/NVlabs)

#### 最近工作 · 2025

<details>
<summary><strong>2. FoundationStereo: Zero-Shot Stereo Matching</strong> · arXiv (Cornell University) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22FoundationStereo%3A+Zero-Shot+Stereo+Matching%22)（未缓存未经核验的数字）
- GitHub Stars：**2839**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2501.09898)

**基于 Abstract 的 TL;DR**

研究者开发了基础Stereo模型，旨在实现强大的零shot泛化能力。该模型通过构建大规模的合成数据集和自适应的优化管道来获得强大的鲁棒性和精度。结果表明，该模型在不同域上表现出强大的零shot泛化能力，建立了新标准。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2501.09898"><img src="https://ar5iv.labs.arxiv.org/html/2501.09898/assets/x5.png" alt="Figure 5 : Qualitative comparison of zero-shot inference on in-the-wild images. For each comparison method we select the best performing checkpoint from their public release, which has been trained on a mixture of public datasets. These images exhibit challenging reflection, translucency, repetitive textures, complex illuminations and thin-structures, revealing the importance of our network architecture and large-scale training." width="720"></a>

> Figure 5 : Qualitative comparison of zero-shot inference on in-the-wild images. For each comparison method we select the best performing checkpoint from their public release, which has been trained on a mixture of public datasets. These images exhibit challenging reflection, translucency, repetitive textures, complex illuminations and thin-structures, revealing the importance of our network architecture and large-scale training.
> 来源：[原论文](https://arxiv.org/abs/2501.09898)

</details>

#### 代表作

<details>
<summary><strong>1. FoundationPose: Unified 6D Pose Estimation and Tracking of Novel Objects</strong> · 2024 IEEE/CVF Conference on Computer Vision and Pattern Recognition (CVPR) · 2024</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22FoundationPose%3A+Unified+6D+Pose+Estimation+and+Tracking+of+Novel+Objects%22)（未缓存未经核验的数字）
- GitHub Stars：**3453**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://doi.org/10.1109/cvpr52733.2024.01692)

**基于 Abstract 的 TL;DR**

基础Pose是一种统一的基础模型，支持6D物体位置估计和跟踪，适用于基于模型和无模型的设置。该方法可以在测试时立即应用于新物体，无需重复训练，只要提供CAD模型或少量参考图像就足够。通过统一框架，下游位置估计模块在两种设置中相同，使用神经隐式表示进行高效的新视图合成。当没有CAD模型时。该方法通过大规模合成训练、语言模型、大型变换器结构和对比学习公式实现强大的普遍性。

</details>

<details>
<summary><strong>2. FoundationStereo: Zero-Shot Stereo Matching</strong> · arXiv (Cornell University) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22FoundationStereo%3A+Zero-Shot+Stereo+Matching%22)（未缓存未经核验的数字）
- GitHub Stars：**2839**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2501.09898)

**基于 Abstract 的 TL;DR**

研究者开发了基础Stereo模型，旨在实现强大的零shot泛化能力。该模型通过构建大规模的合成数据集和自适应的优化管道来获得强大的鲁棒性和精度。结果表明，该模型在不同域上表现出强大的零shot泛化能力，建立了新标准。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2501.09898"><img src="https://ar5iv.labs.arxiv.org/html/2501.09898/assets/x5.png" alt="Figure 5 : Qualitative comparison of zero-shot inference on in-the-wild images. For each comparison method we select the best performing checkpoint from their public release, which has been trained on a mixture of public datasets. These images exhibit challenging reflection, translucency, repetitive textures, complex illuminations and thin-structures, revealing the importance of our network architecture and large-scale training." width="720"></a>

> Figure 5 : Qualitative comparison of zero-shot inference on in-the-wild images. For each comparison method we select the best performing checkpoint from their public release, which has been trained on a mixture of public datasets. These images exhibit challenging reflection, translucency, repetitive textures, complex illuminations and thin-structures, revealing the importance of our network architecture and large-scale training.
> 来源：[原论文](https://arxiv.org/abs/2501.09898)

</details>

<details>
<summary><strong>3. MambaVision: A Hybrid Mamba-Transformer Vision Backbone</strong> · arXiv (Cornell University) · 2024</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22MambaVision%3A+A+Hybrid+Mamba-Transformer+Vision+Backbone%22)（未缓存未经核验的数字）
- GitHub Stars：**2210**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2407.08083)

**基于 Abstract 的 TL;DR**

该研究提出了MambaVision，一个专门设计的Mamba-Transformer骨架，用于视觉应用。通过综合性分析，发现将Mamba与视觉变换器（ViT）结合起来可以显著提高其处理长距离空间依赖性的能力。MambaVision模型在ImageNet-1K数据集上的分类任务表现出SOTA的性能，并在其他下游任务如检测、分割等方面也取得了优异的结果。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2407.08083"><img src="https://ar5iv.labs.arxiv.org/html/2407.08083/assets/x1.png" alt="Figure 2 : The architecture of hierarchical MambaVision models. The first two stages use residual convolutional blocks for fast feature extraction. Stage 3 and 4 employ both MambaVision and Transformer blocks. Specifically, given N 𝑁 N layers, we use N 2 𝑁 2 \frac{N}{2} MambaVision and MLP blocks which are followed by additional N 2 𝑁 2 \frac{N}{2} Transformer and MLP blocks. The Transformer blocks in final layers allow for recovering lost global context and capture long-range spatial dependencies." width="720"></a>

> Figure 2 : The architecture of hierarchical MambaVision models. The first two stages use residual convolutional blocks for fast feature extraction. Stage 3 and 4 employ both MambaVision and Transformer blocks. Specifically, given N 𝑁 N layers, we use N 2 𝑁 2 \frac{N}{2} MambaVision and MLP blocks which are followed by additional N 2 𝑁 2 \frac{N}{2} Transformer and MLP blocks. The Transformer blocks in final layers allow for recovering lost global context and capture long-range spatial dependencies.
> 来源：[原论文](https://arxiv.org/abs/2407.08083)

</details>

</details>

<details>
<summary><img src="https://github.com/NVlabs.png?size=160" width="32" height="32" alt="NVIDIA GEAR logo"> &nbsp;<strong>NVIDIA GEAR</strong> · <code>verified</code></summary>

<br>

NVIDIA GEAR 隶属于 NVIDIA，是一支主要关注具身智能、机器人、基础模型等方向的企业研究实验室。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** NVIDIA
- **主要方向：** 具身智能、机器人、基础模型、仿真
- **负责人：** [负责人/成员页](https://research.nvidia.com/labs/gear/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://research.nvidia.com/labs/gear/) · [GitHub](https://github.com/NVlabs)

#### 最近工作 · 2025

<details>
<summary><strong>2. FoundationStereo: Zero-Shot Stereo Matching</strong> · arXiv (Cornell University) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22FoundationStereo%3A+Zero-Shot+Stereo+Matching%22)（未缓存未经核验的数字）
- GitHub Stars：**2839**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2501.09898)

**基于 Abstract 的 TL;DR**

研究者开发了基础Stereo模型，旨在实现强大的零-shot通用性。该模型通过构建大规模的合成数据集和自适应的优化管道来获得强大的泛化能力，并且采用多种网络组件来增强可扩性和鲁棒性。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2501.09898"><img src="https://ar5iv.labs.arxiv.org/html/2501.09898/assets/x5.png" alt="Figure 5 : Qualitative comparison of zero-shot inference on in-the-wild images. For each comparison method we select the best performing checkpoint from their public release, which has been trained on a mixture of public datasets. These images exhibit challenging reflection, translucency, repetitive textures, complex illuminations and thin-structures, revealing the importance of our network architecture and large-scale training." width="720"></a>

> Figure 5 : Qualitative comparison of zero-shot inference on in-the-wild images. For each comparison method we select the best performing checkpoint from their public release, which has been trained on a mixture of public datasets. These images exhibit challenging reflection, translucency, repetitive textures, complex illuminations and thin-structures, revealing the importance of our network architecture and large-scale training.
> 来源：[原论文](https://arxiv.org/abs/2501.09898)

</details>

#### 代表作

<details>
<summary><strong>1. FoundationPose: Unified 6D Pose Estimation and Tracking of Novel Objects</strong> · 2024 IEEE/CVF Conference on Computer Vision and Pattern Recognition (CVPR) · 2024</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22FoundationPose%3A+Unified+6D+Pose+Estimation+and+Tracking+of+Novel+Objects%22)（未缓存未经核验的数字）
- GitHub Stars：**3453**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://doi.org/10.1109/cvpr52733.2024.01692)

**基于 Abstract 的 TL;DR**

基础Pose是一种统一的基础模型，支持6D物体位置估计和跟踪，适用于基于模型和无模型两种设置。该方法可以在测试时立即应用于新物体，无需重复训练，只要提供CAD模型或少量参考图像就足够。通过统一的框架，下游位置估计模块在两个设置中相同，使用神经隐式表示进行高效的新视图合成，当没有CAD模型时。该方法通过大规模合成数据、语言模型、大型变换器结构和对比学习公式实现强大的普遍性。

</details>

<details>
<summary><strong>2. FoundationStereo: Zero-Shot Stereo Matching</strong> · arXiv (Cornell University) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22FoundationStereo%3A+Zero-Shot+Stereo+Matching%22)（未缓存未经核验的数字）
- GitHub Stars：**2839**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2501.09898)

**基于 Abstract 的 TL;DR**

研究者开发了基础Stereo模型，旨在实现强大的零-shot通用性。该模型通过构建大规模的合成数据集和自适应的优化管道来获得强大的泛化能力，并且采用多种网络组件来增强可扩性和鲁棒性。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2501.09898"><img src="https://ar5iv.labs.arxiv.org/html/2501.09898/assets/x5.png" alt="Figure 5 : Qualitative comparison of zero-shot inference on in-the-wild images. For each comparison method we select the best performing checkpoint from their public release, which has been trained on a mixture of public datasets. These images exhibit challenging reflection, translucency, repetitive textures, complex illuminations and thin-structures, revealing the importance of our network architecture and large-scale training." width="720"></a>

> Figure 5 : Qualitative comparison of zero-shot inference on in-the-wild images. For each comparison method we select the best performing checkpoint from their public release, which has been trained on a mixture of public datasets. These images exhibit challenging reflection, translucency, repetitive textures, complex illuminations and thin-structures, revealing the importance of our network architecture and large-scale training.
> 来源：[原论文](https://arxiv.org/abs/2501.09898)

</details>

<details>
<summary><strong>3. MambaVision: A Hybrid Mamba-Transformer Vision Backbone</strong> · arXiv (Cornell University) · 2024</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22MambaVision%3A+A+Hybrid+Mamba-Transformer+Vision+Backbone%22)（未缓存未经核验的数字）
- GitHub Stars：**2210**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2407.08083)

**基于 Abstract 的 TL;DR**

该研究提出了MambaVision，一个专门设计的Mamba-Transformer骨架，用于视觉应用。通过综合性分析，发现将Mamba与视觉变换器（ViT）结合起来可以显著提高其处理长距离空间依赖性的能力。MambaVision模型在ImageNet-1K数据集上实现SOTA性能，并在其他任务如物体检测、实例分割和语义分割中表现出优越的结果。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2407.08083"><img src="https://ar5iv.labs.arxiv.org/html/2407.08083/assets/x1.png" alt="Figure 2 : The architecture of hierarchical MambaVision models. The first two stages use residual convolutional blocks for fast feature extraction. Stage 3 and 4 employ both MambaVision and Transformer blocks. Specifically, given N 𝑁 N layers, we use N 2 𝑁 2 \frac{N}{2} MambaVision and MLP blocks which are followed by additional N 2 𝑁 2 \frac{N}{2} Transformer and MLP blocks. The Transformer blocks in final layers allow for recovering lost global context and capture long-range spatial dependencies." width="720"></a>

> Figure 2 : The architecture of hierarchical MambaVision models. The first two stages use residual convolutional blocks for fast feature extraction. Stage 3 and 4 employ both MambaVision and Transformer blocks. Specifically, given N 𝑁 N layers, we use N 2 𝑁 2 \frac{N}{2} MambaVision and MLP blocks which are followed by additional N 2 𝑁 2 \frac{N}{2} Transformer and MLP blocks. The Transformer blocks in final layers allow for recovering lost global context and capture long-range spatial dependencies.
> 来源：[原论文](https://arxiv.org/abs/2407.08083)

</details>

</details>

<details>
<summary><img src="https://github.com/NVlabs.png?size=160" width="32" height="32" alt="NVIDIA Data-Driven AI for Robotics (DAIR) logo"> &nbsp;<strong>NVIDIA Data-Driven AI for Robotics (DAIR)</strong> · <code>verified</code></summary>

<br>

NVIDIA Data-Driven AI for Robotics (DAIR) 隶属于 NVIDIA，是一支主要关注机器人、具身智能、人体运动建模等方向的企业研究实验室。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** NVIDIA
- **主要方向：** 机器人、具身智能、人体运动建模、计算机视觉
- **负责人：** [负责人/成员页](https://research.nvidia.com/labs/dair/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://research.nvidia.com/labs/dair/) · [GitHub](https://github.com/NVlabs)

#### 最近工作 · 2025

<details>
<summary><strong>2. FoundationStereo: Zero-Shot Stereo Matching</strong> · arXiv (Cornell University) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22FoundationStereo%3A+Zero-Shot+Stereo+Matching%22)（未缓存未经核验的数字）
- GitHub Stars：**2839**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2501.09898)

**基于 Abstract 的 TL;DR**

研究者开发了基础Stereo模型，旨在实现强大的零shot泛化能力。该模型通过构建大规模的合成数据集和自 curated 的数据处理 pipeline，结合多个网络组件来提高模型的可靠性和精度。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2501.09898"><img src="https://ar5iv.labs.arxiv.org/html/2501.09898/assets/x5.png" alt="Figure 5 : Qualitative comparison of zero-shot inference on in-the-wild images. For each comparison method we select the best performing checkpoint from their public release, which has been trained on a mixture of public datasets. These images exhibit challenging reflection, translucency, repetitive textures, complex illuminations and thin-structures, revealing the importance of our network architecture and large-scale training." width="720"></a>

> Figure 5 : Qualitative comparison of zero-shot inference on in-the-wild images. For each comparison method we select the best performing checkpoint from their public release, which has been trained on a mixture of public datasets. These images exhibit challenging reflection, translucency, repetitive textures, complex illuminations and thin-structures, revealing the importance of our network architecture and large-scale training.
> 来源：[原论文](https://arxiv.org/abs/2501.09898)

</details>

#### 代表作

<details>
<summary><strong>1. FoundationPose: Unified 6D Pose Estimation and Tracking of Novel Objects</strong> · 2024 IEEE/CVF Conference on Computer Vision and Pattern Recognition (CVPR) · 2024</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22FoundationPose%3A+Unified+6D+Pose+Estimation+and+Tracking+of+Novel+Objects%22)（未缓存未经核验的数字）
- GitHub Stars：**3453**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://doi.org/10.1109/cvpr52733.2024.01692)

**基于 Abstract 的 TL;DR**

基础Pose是一种统一的基础模型，支持6D物体位置估计和跟踪，适用于基于模型和无模型两种设置。该方法可以在测试时间直接应用于新物体，无需重复训练，只要提供CAD模型或少量参考图像即可。通过统一框架，下游位置估计模块在两个设置中相同，使用神经隐式表示进行高效的新视图合成，当没有CAD模型时。该方法通过大规模合成数据、语言模型、大型变换器架构和对比学习公式实现强大的普遍性。

</details>

<details>
<summary><strong>2. FoundationStereo: Zero-Shot Stereo Matching</strong> · arXiv (Cornell University) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22FoundationStereo%3A+Zero-Shot+Stereo+Matching%22)（未缓存未经核验的数字）
- GitHub Stars：**2839**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2501.09898)

**基于 Abstract 的 TL;DR**

研究者开发了基础Stereo模型，旨在实现强大的零shot泛化能力。该模型通过构建大规模的合成数据集和自 curated 的数据处理 pipeline，结合多个网络组件来提高模型的可靠性和精度。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2501.09898"><img src="https://ar5iv.labs.arxiv.org/html/2501.09898/assets/x5.png" alt="Figure 5 : Qualitative comparison of zero-shot inference on in-the-wild images. For each comparison method we select the best performing checkpoint from their public release, which has been trained on a mixture of public datasets. These images exhibit challenging reflection, translucency, repetitive textures, complex illuminations and thin-structures, revealing the importance of our network architecture and large-scale training." width="720"></a>

> Figure 5 : Qualitative comparison of zero-shot inference on in-the-wild images. For each comparison method we select the best performing checkpoint from their public release, which has been trained on a mixture of public datasets. These images exhibit challenging reflection, translucency, repetitive textures, complex illuminations and thin-structures, revealing the importance of our network architecture and large-scale training.
> 来源：[原论文](https://arxiv.org/abs/2501.09898)

</details>

<details>
<summary><strong>3. MambaVision: A Hybrid Mamba-Transformer Vision Backbone</strong> · arXiv (Cornell University) · 2024</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22MambaVision%3A+A+Hybrid+Mamba-Transformer+Vision+Backbone%22)（未缓存未经核验的数字）
- GitHub Stars：**2210**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2407.08083)

**基于 Abstract 的 TL;DR**

研究者提出了一个专门为视觉应用设计的新型混合Mamba-Transformer骨架，称为MambaVision。通过全面分析，发现将自注意力块融入最后一层显著提高Mamba模型对长距离空间依赖关系的能力。基于这些发现，研究者开发了一系列具有多级结构的MambaVision模型，以满足不同设计要求。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2407.08083"><img src="https://ar5iv.labs.arxiv.org/html/2407.08083/assets/x1.png" alt="Figure 2 : The architecture of hierarchical MambaVision models. The first two stages use residual convolutional blocks for fast feature extraction. Stage 3 and 4 employ both MambaVision and Transformer blocks. Specifically, given N 𝑁 N layers, we use N 2 𝑁 2 \frac{N}{2} MambaVision and MLP blocks which are followed by additional N 2 𝑁 2 \frac{N}{2} Transformer and MLP blocks. The Transformer blocks in final layers allow for recovering lost global context and capture long-range spatial dependencies." width="720"></a>

> Figure 2 : The architecture of hierarchical MambaVision models. The first two stages use residual convolutional blocks for fast feature extraction. Stage 3 and 4 employ both MambaVision and Transformer blocks. Specifically, given N 𝑁 N layers, we use N 2 𝑁 2 \frac{N}{2} MambaVision and MLP blocks which are followed by additional N 2 𝑁 2 \frac{N}{2} Transformer and MLP blocks. The Transformer blocks in final layers allow for recovering lost global context and capture long-range spatial dependencies.
> 来源：[原论文](https://arxiv.org/abs/2407.08083)

</details>

</details>

<details>
<summary><img src="https://github.com/NVlabs.png?size=160" width="32" height="32" alt="NVIDIA Efficient AI Lab logo"> &nbsp;<strong>NVIDIA Efficient AI Lab</strong> · <code>verified</code></summary>

<br>

NVIDIA Efficient AI Lab 隶属于 NVIDIA，是一支主要关注高效 AI、模型压缩、模型推理等方向的企业研究实验室。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** NVIDIA
- **主要方向：** 高效 AI、模型压缩、模型推理、生成式 AI
- **负责人：** [负责人/成员页](https://research.nvidia.com/labs/eai/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://research.nvidia.com/labs/eai/) · [GitHub](https://github.com/NVlabs)

#### 最近工作 · 2025

<details>
<summary><strong>2. FoundationStereo: Zero-Shot Stereo Matching</strong> · arXiv (Cornell University) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22FoundationStereo%3A+Zero-Shot+Stereo+Matching%22)（未缓存未经核验的数字）
- GitHub Stars：**2839**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2501.09898)

**基于 Abstract 的 TL;DR**

研究者开发了基础Stereo模型，旨在实现强大的零-shot通用性。该模型通过构建大规模的合成数据集和自适应的优化管道来获得强大的泛化能力，并且采用多个网络组件来增强可扩性和鲁棒性。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2501.09898"><img src="https://ar5iv.labs.arxiv.org/html/2501.09898/assets/x5.png" alt="Figure 5 : Qualitative comparison of zero-shot inference on in-the-wild images. For each comparison method we select the best performing checkpoint from their public release, which has been trained on a mixture of public datasets. These images exhibit challenging reflection, translucency, repetitive textures, complex illuminations and thin-structures, revealing the importance of our network architecture and large-scale training." width="720"></a>

> Figure 5 : Qualitative comparison of zero-shot inference on in-the-wild images. For each comparison method we select the best performing checkpoint from their public release, which has been trained on a mixture of public datasets. These images exhibit challenging reflection, translucency, repetitive textures, complex illuminations and thin-structures, revealing the importance of our network architecture and large-scale training.
> 来源：[原论文](https://arxiv.org/abs/2501.09898)

</details>

#### 代表作

<details>
<summary><strong>1. FoundationPose: Unified 6D Pose Estimation and Tracking of Novel Objects</strong> · 2024 IEEE/CVF Conference on Computer Vision and Pattern Recognition (CVPR) · 2024</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22FoundationPose%3A+Unified+6D+Pose+Estimation+and+Tracking+of+Novel+Objects%22)（未缓存未经核验的数字）
- GitHub Stars：**3453**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://doi.org/10.1109/cvpr52733.2024.01692)

**基于 Abstract 的 TL;DR**

基础Pose是一种统一的基础模型，支持6D物体位置估计和跟踪，适用于基于模型和无模型两种设置。该方法可以在测试时间直接应用于新物体，无需重复训练，只要提供CAD模型或少量参考图像即可。通过大规模合成数据的训练和语言模型、Transformer架构和对比学习等技术，基础Pose实现了强大的普遍性和高性能。

</details>

<details>
<summary><strong>2. FoundationStereo: Zero-Shot Stereo Matching</strong> · arXiv (Cornell University) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22FoundationStereo%3A+Zero-Shot+Stereo+Matching%22)（未缓存未经核验的数字）
- GitHub Stars：**2839**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2501.09898)

**基于 Abstract 的 TL;DR**

研究者开发了基础Stereo模型，旨在实现强大的零-shot通用性。该模型通过构建大规模的合成数据集和自适应的优化管道来获得强大的泛化能力，并且采用多个网络组件来增强可扩性和鲁棒性。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2501.09898"><img src="https://ar5iv.labs.arxiv.org/html/2501.09898/assets/x5.png" alt="Figure 5 : Qualitative comparison of zero-shot inference on in-the-wild images. For each comparison method we select the best performing checkpoint from their public release, which has been trained on a mixture of public datasets. These images exhibit challenging reflection, translucency, repetitive textures, complex illuminations and thin-structures, revealing the importance of our network architecture and large-scale training." width="720"></a>

> Figure 5 : Qualitative comparison of zero-shot inference on in-the-wild images. For each comparison method we select the best performing checkpoint from their public release, which has been trained on a mixture of public datasets. These images exhibit challenging reflection, translucency, repetitive textures, complex illuminations and thin-structures, revealing the importance of our network architecture and large-scale training.
> 来源：[原论文](https://arxiv.org/abs/2501.09898)

</details>

<details>
<summary><strong>3. MambaVision: A Hybrid Mamba-Transformer Vision Backbone</strong> · arXiv (Cornell University) · 2024</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22MambaVision%3A+A+Hybrid+Mamba-Transformer+Vision+Backbone%22)（未缓存未经核验的数字）
- GitHub Stars：**2210**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2407.08083)

**基于 Abstract 的 TL;DR**

研究者提出了MambaVision，一个专门设计的Mamba-Transformer骨架，用于视觉应用。通过综合性分析，发现将Mamba与视觉转换器（ViT）结合起来可以显著提高其处理长距离空间依赖性的能力。MambaVision模型在ImageNet-1K数据集上的分类任务表现出SOTA的性能，并在其他下游任务如检测、分割等方面也取得了优越的结果。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2407.08083"><img src="https://ar5iv.labs.arxiv.org/html/2407.08083/assets/x1.png" alt="Figure 2 : The architecture of hierarchical MambaVision models. The first two stages use residual convolutional blocks for fast feature extraction. Stage 3 and 4 employ both MambaVision and Transformer blocks. Specifically, given N 𝑁 N layers, we use N 2 𝑁 2 \frac{N}{2} MambaVision and MLP blocks which are followed by additional N 2 𝑁 2 \frac{N}{2} Transformer and MLP blocks. The Transformer blocks in final layers allow for recovering lost global context and capture long-range spatial dependencies." width="720"></a>

> Figure 2 : The architecture of hierarchical MambaVision models. The first two stages use residual convolutional blocks for fast feature extraction. Stage 3 and 4 employ both MambaVision and Transformer blocks. Specifically, given N 𝑁 N layers, we use N 2 𝑁 2 \frac{N}{2} MambaVision and MLP blocks which are followed by additional N 2 𝑁 2 \frac{N}{2} Transformer and MLP blocks. The Transformer blocks in final layers allow for recovering lost global context and capture long-range spatial dependencies.
> 来源：[原论文](https://arxiv.org/abs/2407.08083)

</details>

</details>

### Amazon（2）

<details>
<summary><img src="https://github.com/amazon-science.png?size=160" width="32" height="32" alt="Amazon AGI Lab logo"> &nbsp;<strong>Amazon AGI Lab</strong> · <code>verified</code></summary>

<br>

Amazon AGI Lab 隶属于 Amazon，是一支主要关注智能体、强化学习、多模态学习等方向的前沿 AI 实验室。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** Amazon
- **主要方向：** 智能体、强化学习、多模态学习、人机交互
- **负责人：** [负责人/成员页](https://labs.amazon.science/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://labs.amazon.science/) · [GitHub](https://github.com/amazon-science)

#### 最近工作 · 2025

<details>
<summary><strong>3. Learning to Reason Over Time: Timeline Self-Reflection for Improved Temporal Reasoning in Language Models</strong> · arXiv (Cornell University) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Learning+to+Reason+Over+Time%3A+Timeline+Self-Reflection+for+Improved+Temporal+Reasoning+in+Language+Models%22)（未缓存未经核验的数字）
- GitHub Stars：**14**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2504.05258)

**基于 Abstract 的 TL;DR**

研究问题是大型语言模型（LLM）在时间推理方面的局限性。该论文提出TISER框架，通过多阶段过程和测试时缩放来增强LMM的时间推理能力。实验结果显示TISER实现了多项benchmarks的最佳表现，并使小型开源模型能够超越大型闭量模型在复杂时间推理任务上取得突破。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2504.05258"><img src="https://ar5iv.labs.arxiv.org/html/2504.05258/assets/x1.png" alt="Figure 1: High-level overview of TISER (right) compared to other prompting strategies such as standard prompting or CoT without test-time scaling (bottom left) for a given question and temporal context (upper left). In contrast to standard prompting and CoT, our method leverages test-time compute scaling for reasoning, timeline construction, and reflection, leading to more accurate answers. The model used for inference in this example is Qwen2.5-7B." width="720"></a>

> Figure 1: High-level overview of TISER (right) compared to other prompting strategies such as standard prompting or CoT without test-time scaling (bottom left) for a given question and temporal context (upper left). In contrast to standard prompting and CoT, our method leverages test-time compute scaling for reasoning, timeline construction, and reflection, leading to more accurate answers. The model used for inference in this example is Qwen2.5-7B.
> 来源：[原论文](https://arxiv.org/abs/2504.05258)

</details>

#### 代表作

<details>
<summary><strong>1. Code Representation Learning At Scale</strong> · arXiv (Cornell University) · 2024</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Code+Representation+Learning+At+Scale%22)（未缓存未经核验的数字）
- GitHub Stars：**122**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2402.01935)

**基于 Abstract 的 TL;DR**

研究人员提出一种两阶段预训练方案，利用大量代码数据来改善代码表示学习。他们发现这种方法可以建立一个高性能的编码器模型，远超现有模型在多种下游任务上的表现。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2402.01935"><img src="https://ar5iv.labs.arxiv.org/html/2402.01935/assets/figures/codesage_plus.png" alt="Figure 1: An overview of the key ingredients of CodeSage for code representation learning." width="720"></a>

> Figure 1: An overview of the key ingredients of CodeSage for code representation learning.
> 来源：[原论文](https://arxiv.org/abs/2402.01935)

</details>

<details>
<summary><strong>2. Automated Evaluation of Retrieval-Augmented Language Models with Task-Specific Exam Generation</strong> · arXiv (Cornell University) · 2024</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Automated+Evaluation+of+Retrieval-Augmented+Language+Models+with+Task-Specific+Exam+Generation%22)（未缓存未经核验的数字）
- GitHub Stars：**88**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2405.13622)

**基于 Abstract 的 TL;DR**

我们提出了一种新方法来评估Retrieval-Augmented Large Language Models（RAG）的任务特异性准确度。该方法使用自动生成的多选题考试，基于与任务相关的文档集合，评估RAG的性能。我们的方法是一种自动化、成本效益、解释性和robust的策略来选择RAG系统的最佳组件。我们利用Item Response Theory（IRT）估计测试的质量和信息性，并提供了一个自然的方式来通过移除不够信息性的考试题来迭代改进测试。我们的方法在四个新开启的问答任务上进行了实验，包括Arxiv摘要、StackExchange问题、AWS DevOps troubleshooting指南和SEC文件。我们的实验结果表明，选择正确的检索算法往往比仅使用更大的语言模型来获得更大的性能提升。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2405.13622"><img src="https://ar5iv.labs.arxiv.org/html/2405.13622/assets/img/radar_plot/newplot.png" alt="Figure 1: Granular results of our exam evaluation for the task of AWS DevOps troubleshooting. Accuracy is reported for different retrieval approaches and retriever sizes, on a % scale. Labels on the diameter shows the troubleshooting categories, i.e., AWS resources. Colors correspond to different retrieval approaches ( Oracle , DPRV2 , MultiQA , ClosedBook , as discussed in Section  4.2 ) and patterns correspond to the base LLM size (7B, 13B, and 70B). For instance, we observe that a small model such as Mistral-7B with MultiQA embeddings has an accuracy around 80% for the AWS resource “Relational Database Service” (RDS)." width="720"></a>

> Figure 1: Granular results of our exam evaluation for the task of AWS DevOps troubleshooting. Accuracy is reported for different retrieval approaches and retriever sizes, on a % scale. Labels on the diameter shows the troubleshooting categories, i.e., AWS resources. Colors correspond to different retrieval approaches ( Oracle , DPRV2 , MultiQA , ClosedBook , as discussed in Section  4.2 ) and patterns correspond to the base LLM size (7B, 13B, and 70B). For instance, we observe that a small model such as Mistral-7B with MultiQA embeddings has an accuracy around 80% for the AWS resource “Relational Database Service” (RDS).
> 来源：[原论文](https://arxiv.org/abs/2405.13622)

</details>

<details>
<summary><strong>3. Learning to Reason Over Time: Timeline Self-Reflection for Improved Temporal Reasoning in Language Models</strong> · arXiv (Cornell University) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Learning+to+Reason+Over+Time%3A+Timeline+Self-Reflection+for+Improved+Temporal+Reasoning+in+Language+Models%22)（未缓存未经核验的数字）
- GitHub Stars：**14**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2504.05258)

**基于 Abstract 的 TL;DR**

研究问题是大型语言模型（LLM）在时间推理方面的局限性。该论文提出TISER框架，通过多阶段过程和测试时缩放来增强LMM的时间推理能力。实验结果显示TISER实现了多项benchmarks的最佳表现，并使小型开源模型能够超越大型闭量模型在复杂时间推理任务上取得突破。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2504.05258"><img src="https://ar5iv.labs.arxiv.org/html/2504.05258/assets/x1.png" alt="Figure 1: High-level overview of TISER (right) compared to other prompting strategies such as standard prompting or CoT without test-time scaling (bottom left) for a given question and temporal context (upper left). In contrast to standard prompting and CoT, our method leverages test-time compute scaling for reasoning, timeline construction, and reflection, leading to more accurate answers. The model used for inference in this example is Qwen2.5-7B." width="720"></a>

> Figure 1: High-level overview of TISER (right) compared to other prompting strategies such as standard prompting or CoT without test-time scaling (bottom left) for a given question and temporal context (upper left). In contrast to standard prompting and CoT, our method leverages test-time compute scaling for reasoning, timeline construction, and reflection, leading to more accurate answers. The model used for inference in this example is Qwen2.5-7B.
> 来源：[原论文](https://arxiv.org/abs/2504.05258)

</details>

</details>

<details>
<summary><img src="https://github.com/amazon-science.png?size=160" width="32" height="32" alt="Amazon Science logo"> &nbsp;<strong>Amazon Science</strong> · <code>verified</code></summary>

<br>

Amazon Science 隶属于 Amazon，是一支主要关注机器学习、自然语言处理、机器人等方向的企业研究网络。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** Amazon
- **主要方向：** 机器学习、自然语言处理、机器人、推荐系统
- **负责人：** [负责人/成员页](https://www.amazon.science/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://www.amazon.science/) · [GitHub](https://github.com/amazon-science)

#### 最近工作 · 2025

<details>
<summary><strong>3. Learning to Reason Over Time: Timeline Self-Reflection for Improved Temporal Reasoning in Language Models</strong> · arXiv (Cornell University) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Learning+to+Reason+Over+Time%3A+Timeline+Self-Reflection+for+Improved+Temporal+Reasoning+in+Language+Models%22)（未缓存未经核验的数字）
- GitHub Stars：**14**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2504.05258)

**基于 Abstract 的 TL;DR**

研究问题是大型语言模型（LLM）在时间推理方面的局限性。该论文提出了TISER框架，通过多阶段过程和测试时缩放来增强LMM的时间推理能力。实验结果显示TISER在多个benchmarks上取得了领先水平，包括出分布测试集，并且使小型开源模型能够超过大型闭量模型在挑战性时间推理任务中。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2504.05258"><img src="https://ar5iv.labs.arxiv.org/html/2504.05258/assets/x1.png" alt="Figure 1: High-level overview of TISER (right) compared to other prompting strategies such as standard prompting or CoT without test-time scaling (bottom left) for a given question and temporal context (upper left). In contrast to standard prompting and CoT, our method leverages test-time compute scaling for reasoning, timeline construction, and reflection, leading to more accurate answers. The model used for inference in this example is Qwen2.5-7B." width="720"></a>

> Figure 1: High-level overview of TISER (right) compared to other prompting strategies such as standard prompting or CoT without test-time scaling (bottom left) for a given question and temporal context (upper left). In contrast to standard prompting and CoT, our method leverages test-time compute scaling for reasoning, timeline construction, and reflection, leading to more accurate answers. The model used for inference in this example is Qwen2.5-7B.
> 来源：[原论文](https://arxiv.org/abs/2504.05258)

</details>

#### 代表作

<details>
<summary><strong>1. Code Representation Learning At Scale</strong> · arXiv (Cornell University) · 2024</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Code+Representation+Learning+At+Scale%22)（未缓存未经核验的数字）
- GitHub Stars：**122**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2402.01935)

**基于 Abstract 的 TL;DR**

研究人员提出一种两阶段预训练方案，利用大量代码数据和混合masking语言模型和编程结构的方法进行编码学习。结果表明该方法的模型在多种下游任务上表现出显著的优势，并对成功的编码学习的因素进行了详细分析。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2402.01935"><img src="https://ar5iv.labs.arxiv.org/html/2402.01935/assets/figures/codesage_plus.png" alt="Figure 1: An overview of the key ingredients of CodeSage for code representation learning." width="720"></a>

> Figure 1: An overview of the key ingredients of CodeSage for code representation learning.
> 来源：[原论文](https://arxiv.org/abs/2402.01935)

</details>

<details>
<summary><strong>2. Automated Evaluation of Retrieval-Augmented Language Models with Task-Specific Exam Generation</strong> · arXiv (Cornell University) · 2024</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Automated+Evaluation+of+Retrieval-Augmented+Language+Models+with+Task-Specific+Exam+Generation%22)（未缓存未经核验的数字）
- GitHub Stars：**88**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2405.13622)

**基于 Abstract 的 TL;DR**

我们提出了一种新方法来评估Retrieval-Augmented Large Language Models（RAG）的任务特异性准确度。该方法使用自动生成的多选题考试，基于与任务相关的文档集。这种方法是一种自动化、成本效益、解释性和robust的策略来选择RAG系统的最佳组件。我们利用Item Response Theory（IRT）估计测试的质量和其对任务特异准确度的信息价值。 IRT还提供了一个自然的方式来通过移除不足够有信息的考试题目来迭代改进测试。我们在四个新开放式问题回答任务上进行了实验，基于Arxiv摘要、StackExchange问题、AWS DevOps调试指南和SEC文件。我们的实验结果显示，选择正确的检索算法往往比仅使用更大的语言模型而言带来更大的性能提升。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2405.13622"><img src="https://ar5iv.labs.arxiv.org/html/2405.13622/assets/img/radar_plot/newplot.png" alt="Figure 1: Granular results of our exam evaluation for the task of AWS DevOps troubleshooting. Accuracy is reported for different retrieval approaches and retriever sizes, on a % scale. Labels on the diameter shows the troubleshooting categories, i.e., AWS resources. Colors correspond to different retrieval approaches ( Oracle , DPRV2 , MultiQA , ClosedBook , as discussed in Section  4.2 ) and patterns correspond to the base LLM size (7B, 13B, and 70B). For instance, we observe that a small model such as Mistral-7B with MultiQA embeddings has an accuracy around 80% for the AWS resource “Relational Database Service” (RDS)." width="720"></a>

> Figure 1: Granular results of our exam evaluation for the task of AWS DevOps troubleshooting. Accuracy is reported for different retrieval approaches and retriever sizes, on a % scale. Labels on the diameter shows the troubleshooting categories, i.e., AWS resources. Colors correspond to different retrieval approaches ( Oracle , DPRV2 , MultiQA , ClosedBook , as discussed in Section  4.2 ) and patterns correspond to the base LLM size (7B, 13B, and 70B). For instance, we observe that a small model such as Mistral-7B with MultiQA embeddings has an accuracy around 80% for the AWS resource “Relational Database Service” (RDS).
> 来源：[原论文](https://arxiv.org/abs/2405.13622)

</details>

<details>
<summary><strong>3. Learning to Reason Over Time: Timeline Self-Reflection for Improved Temporal Reasoning in Language Models</strong> · arXiv (Cornell University) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Learning+to+Reason+Over+Time%3A+Timeline+Self-Reflection+for+Improved+Temporal+Reasoning+in+Language+Models%22)（未缓存未经核验的数字）
- GitHub Stars：**14**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2504.05258)

**基于 Abstract 的 TL;DR**

研究问题是大型语言模型（LLM）在时间推理方面的局限性。该论文提出了TISER框架，通过多阶段过程和测试时缩放来增强LMM的时间推理能力。实验结果显示TISER在多个benchmarks上取得了领先水平，包括出分布测试集，并且使小型开源模型能够超过大型闭量模型在挑战性时间推理任务中。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2504.05258"><img src="https://ar5iv.labs.arxiv.org/html/2504.05258/assets/x1.png" alt="Figure 1: High-level overview of TISER (right) compared to other prompting strategies such as standard prompting or CoT without test-time scaling (bottom left) for a given question and temporal context (upper left). In contrast to standard prompting and CoT, our method leverages test-time compute scaling for reasoning, timeline construction, and reflection, leading to more accurate answers. The model used for inference in this example is Qwen2.5-7B." width="720"></a>

> Figure 1: High-level overview of TISER (right) compared to other prompting strategies such as standard prompting or CoT without test-time scaling (bottom left) for a given question and temporal context (upper left). In contrast to standard prompting and CoT, our method leverages test-time compute scaling for reasoning, timeline construction, and reflection, leading to more accurate answers. The model used for inference in this example is Qwen2.5-7B.
> 来源：[原论文](https://arxiv.org/abs/2504.05258)

</details>

</details>

### Apple（2）

<details>
<summary><img src="https://github.com/apple.png?size=160" width="32" height="32" alt="Apple Machine Learning Research logo"> &nbsp;<strong>Apple Machine Learning Research</strong> · <code>verified</code></summary>

<br>

Apple Machine Learning Research 隶属于 Apple，是一支主要关注机器学习、计算机视觉、语音技术等方向的企业研究网络。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** Apple
- **主要方向：** 机器学习、计算机视觉、语音技术、负责任 AI
- **负责人：** [负责人/成员页](https://machinelearning.apple.com/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://machinelearning.apple.com/) · [GitHub](https://github.com/apple)

#### 最近工作 · 2026

<details>
<summary><strong>3. LiTo: Surface Light Field Tokenization</strong> · arXiv (Cornell University) · 2026</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22LiTo%3A+Surface+Light+Field+Tokenization%22)（未缓存未经核验的数字）
- GitHub Stars：**459**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2603.11047)

**基于 Abstract 的 TL;DR**

该研究提出了一个可以同时 modeling 对象几何和视觉依赖性表面颜色的 3D 隐式表示。通过利用 RGB-深度图像提供的表面光场样本，模型学习在统一的 3D 隐式空间中表示几何和颜色。这一表示可以重现复杂照明下 specular 高光和弗雷斯内射反射等视觉依赖性效果。实验结果显示，该方法比现有方法具有更高的可视质量和更好的输入准确度。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2603.11047"><img src="https://ar5iv.labs.arxiv.org/html/2603.11047/assets/x2.png" alt="Figure 2: Overview of the 3D latent representation. Given samples of the surface light field of the scene, we learn a latent representation that reconstruct the full surface light field information. The encoder (pink block) condenses input information into the latent representation. We jointly supervise the latent representation to contain full 3D geometry and view-dependent radiance information beyond the input samples. In the architectures, we design localized attention pattern to improve efficiency and support 1 million input tokens." width="720"></a>

> Figure 2: Overview of the 3D latent representation. Given samples of the surface light field of the scene, we learn a latent representation that reconstruct the full surface light field information. The encoder (pink block) condenses input information into the latent representation. We jointly supervise the latent representation to contain full 3D geometry and view-dependent radiance information beyond the input samples. In the architectures, we design localized attention pattern to improve efficiency and support 1 million input tokens.
> 来源：[原论文](https://arxiv.org/abs/2603.11047)

</details>

#### 代表作

<details>
<summary><strong>1. FastVLM: Efficient Vision Encoding for Vision Language Models</strong> · arXiv (Cornell University) · 2024</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22FastVLM%3A+Efficient+Vision+Encoding+for+Vision+Language+Models%22)（未缓存未经核验的数字）
- GitHub Stars：**7389**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2412.13303)

**基于 Abstract 的 TL;DR**

研究者探讨了如何提高视觉语言模型（VLM）的性能，特别是在文本丰富的图像理解任务中。他们提出了FastVLM，该模型通过优化视觉编码器的效率和模型大小来实现最佳平衡。FastVLM使用FastViTHD，一个新式的混合视觉编码器，可以减少token数量并降低编码时间。实验结果表明，FastVLM在时间到第一个 token（TTFT）的速度方面取得了 3.2 倍的改进，同时保持了与其他方法相似的性能。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2412.13303"><img src="https://ar5iv.labs.arxiv.org/html/2412.13303/assets/x3.png" alt="Figure 2 : Overview of the FastVLM architecture. FastVLM consists of our novel vision encoder, FastViTHD, trained using the same setup as LLaVa. The FastViTHD architecture is designed and trained for low latency at high resolution, utilizing novel multi-scale pooling, additional self-attention layers, and downsampling to generate 4 × \times fewer tokens than FastViT, and 16 × \times fewer tokens than ViT-L/14 at resolution 336." width="720"></a>

> Figure 2 : Overview of the FastVLM architecture. FastVLM consists of our novel vision encoder, FastViTHD, trained using the same setup as LLaVa. The FastViTHD architecture is designed and trained for low latency at high resolution, utilizing novel multi-scale pooling, additional self-attention layers, and downsampling to generate 4 × \times fewer tokens than FastViT, and 16 × \times fewer tokens than ViT-L/14 at resolution 336.
> 来源：[原论文](https://arxiv.org/abs/2412.13303)

</details>

<details>
<summary><strong>2. This repository contains the official implementation of the research papers, &quot;MobileCLIP&quot; CVPR 2024 and &quot;MobileCLIP2&quot; TMLR August 2025</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**1602**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/apple/ml-mobileclip)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：This repository contains the official implementation of the research papers, &quot;MobileCLIP&quot; CVPR 2024 and &quot;MobileCLIP2&quot; TMLR August 2025 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>3. LiTo: Surface Light Field Tokenization</strong> · arXiv (Cornell University) · 2026</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22LiTo%3A+Surface+Light+Field+Tokenization%22)（未缓存未经核验的数字）
- GitHub Stars：**459**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2603.11047)

**基于 Abstract 的 TL;DR**

该研究提出了一个可以同时 modeling 对象几何和视觉依赖性表面颜色的 3D 隐式表示。通过利用 RGB-深度图像提供的表面光场样本，模型学习在统一的 3D 隐式空间中表示几何和颜色。这一表示可以重现复杂照明下 specular 高光和弗雷斯内射反射等视觉依赖性效果。实验结果显示，该方法比现有方法具有更高的可视质量和更好的输入准确度。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2603.11047"><img src="https://ar5iv.labs.arxiv.org/html/2603.11047/assets/x2.png" alt="Figure 2: Overview of the 3D latent representation. Given samples of the surface light field of the scene, we learn a latent representation that reconstruct the full surface light field information. The encoder (pink block) condenses input information into the latent representation. We jointly supervise the latent representation to contain full 3D geometry and view-dependent radiance information beyond the input samples. In the architectures, we design localized attention pattern to improve efficiency and support 1 million input tokens." width="720"></a>

> Figure 2: Overview of the 3D latent representation. Given samples of the surface light field of the scene, we learn a latent representation that reconstruct the full surface light field information. The encoder (pink block) condenses input information into the latent representation. We jointly supervise the latent representation to contain full 3D geometry and view-dependent radiance information beyond the input samples. In the architectures, we design localized attention pattern to improve efficiency and support 1 million input tokens.
> 来源：[原论文](https://arxiv.org/abs/2603.11047)

</details>

</details>

<details>
<summary><img src="https://github.com/ml-explore.png?size=160" width="32" height="32" alt="Apple MLX Research Team logo"> &nbsp;<strong>Apple MLX Research Team</strong> · <code>verified</code></summary>

<br>

Apple MLX Research Team 隶属于 Apple，是一支主要关注机器学习框架、高效 AI、端侧 AI的研究工程团队。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** Apple
- **主要方向：** 机器学习框架、高效 AI、端侧 AI
- **负责人：** [负责人/成员页](https://ml-explore.github.io/mlx/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://ml-explore.github.io/mlx/) · [GitHub](https://github.com/ml-explore)

#### 最近工作 · 2026-07-27

<details>
<summary><strong>1. MLX: An array framework for Apple silicon</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**27732**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/ml-explore/mlx)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：MLX: An array framework for Apple silicon 可通过原始链接查看完整项目、论文或数据说明。

</details>

#### 代表作

<details>
<summary><strong>1. MLX: An array framework for Apple silicon</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**27732**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/ml-explore/mlx)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：MLX: An array framework for Apple silicon 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>2. Examples in the MLX framework</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**8856**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/ml-explore/mlx-examples)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：Examples in the MLX framework 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>3. Run LLMs with MLX</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**6440**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/ml-explore/mlx-lm)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：Run LLMs with MLX 可通过原始链接查看完整项目、论文或数据说明。

</details>

</details>

## 美国前沿 AI 公司

### OpenAI（1）

<details>
<summary><img src="https://github.com/openai.png?size=160" width="32" height="32" alt="OpenAI Research logo"> &nbsp;<strong>OpenAI Research</strong> · <code>verified</code></summary>

<br>

OpenAI Research 隶属于 OpenAI，是一支主要关注基础模型、机器推理、多模态学习等方向的前沿 AI 实验室。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** OpenAI
- **主要方向：** 基础模型、机器推理、多模态学习、AI 安全
- **负责人：** [负责人/成员页](https://openai.com/research/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://openai.com/research/) · [GitHub](https://github.com/openai)

#### 最近工作 · 2024

<details>
<summary><strong>3. MLE-bench: Evaluating Machine Learning Agents on Machine Learning Engineering</strong> · arXiv (Cornell University) · 2024</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22MLE-bench%3A+Evaluating+Machine+Learning+Agents+on+Machine+Learning+Engineering%22)（未缓存未经核验的数字）
- GitHub Stars：**1658**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2410.07095)

**基于 Abstract 的 TL;DR**

该研究探讨了长时间运行的智能代理在有限活动环境下如何保持稳定性。研究重点不仅是模型质量，还是在中间层次上研究如何让代理维持、退役、替换、压缩、分支和重置竞争性的假设或路线总结。该框架将搜索状态表示为一个被分成粗糙家族的活跃假设组合，各个项目都包含了承诺、验证延迟、保留成本、老化、重叠负担和 inertia。研究的关键贡献是建立了一种适当性语义：在每个鉴别窗口中，系统与一个非空随机集合相关联，这个集合由现实初始信息状态和下游随机性的实现所诞生。成功定义为在第一阶段强烈鉴别的验证阶段中至少保留一个适当家族的recoverability，避免依赖于选择器定义的伪真。研究

</details>

#### 代表作

<details>
<summary><strong>1. CLIP (Contrastive Language-Image Pretraining),  Predict the most relevant text snippet given an image</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**34080**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/openai/CLIP)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：CLIP (Contrastive Language-Image Pretraining), Predict the most relevant text snippet given an image 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>2. Video PreTraining (VPT): Learning to Act by Watching Unlabeled Online Videos</strong> · Advances in Neural Information Processing Systems 35 · 2022</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Video+PreTraining+%28VPT%29%3A+Learning+to+Act+by+Watching+Unlabeled+Online+Videos%22)（未缓存未经核验的数字）
- GitHub Stars：**1720**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://doi.org/10.52202/068431-1789)

**摘要 / 项目说明**

已匹配论文《Video PreTraining (VPT): Learning to Act by Watching Unlabeled Online Videos》，但开放元数据暂未提供 Abstract；请通过论文原文查看方法与结论。

</details>

<details>
<summary><strong>3. MLE-bench: Evaluating Machine Learning Agents on Machine Learning Engineering</strong> · arXiv (Cornell University) · 2024</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22MLE-bench%3A+Evaluating+Machine+Learning+Agents+on+Machine+Learning+Engineering%22)（未缓存未经核验的数字）
- GitHub Stars：**1658**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2410.07095)

**基于 Abstract 的 TL;DR**

该研究探讨了长时间运行的智能代理在有限活动环境下如何保持稳定性。研究重点不仅是模型质量，还是在中间层次上研究如何让代理维持、退役、替换、压缩、分支和重置竞争性的假设或路线总结。该框架将搜索状态表示为一个被分成粗糙家族的活跃假设组合，各个项目都包含了承诺、验证延迟、保留成本、老化、重叠负担和 inertia。研究的关键贡献是建立了一种适当性语义：在每个鉴别窗口中，系统与一个非空随机集合相关联，这个集合由现实初始信息状态和下游随机性的实现所诞生。成功定义为在第一阶段强烈鉴别的验证阶段中至少保留一个适当家族的recoverability，避免依赖于选择器定义的伪真。研究

</details>

</details>

### Anthropic（5）

<details>
<summary><img src="https://github.com/anthropics.png?size=160" width="32" height="32" alt="Anthropic Alignment logo"> &nbsp;<strong>Anthropic Alignment</strong> · <code>verified</code></summary>

<br>

Anthropic Alignment 隶属于 Anthropic，是一支主要关注AI 对齐、模型行为、AI 安全与对齐的前沿 AI 研究团队。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** Anthropic
- **主要方向：** AI 对齐、模型行为、AI 安全与对齐
- **负责人：** [负责人/成员页](https://www.anthropic.com/research) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://www.anthropic.com/research) · [GitHub](https://github.com/anthropics)

#### 最近工作 · 2026-07-16

<details>
<summary><strong>1. Skills for threat modeling, scanning, triage, patching, plus an autonomous scanning harness you can /customize</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**6860**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/anthropics/defending-code-reference-harness)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：Skills for threat modeling, scanning, triage, patching, plus an autonomous scanning harness you can /customize 可通过原始链接查看完整项目、论文或数据说明。

</details>

#### 代表作

<details>
<summary><strong>1. Skills for threat modeling, scanning, triage, patching, plus an autonomous scanning harness you can /customize</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**6860**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/anthropics/defending-code-reference-harness)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：Skills for threat modeling, scanning, triage, patching, plus an autonomous scanning harness you can /customize 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>2. Anthropic&#39;s educational courses</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**22465**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/anthropics/courses)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：Anthropic&#39;s educational courses 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>3. An AI-powered security review GitHub Action using Claude to analyze code changes for security vulnerabilities.</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**5665**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/anthropics/claude-code-security-review)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：An AI-powered security review GitHub Action using Claude to analyze code changes for security vulnerabilities. 可通过原始链接查看完整项目、论文或数据说明。

</details>

</details>

<details>
<summary><img src="https://github.com/anthropics.png?size=160" width="32" height="32" alt="Anthropic Interpretability logo"> &nbsp;<strong>Anthropic Interpretability</strong> · <code>verified</code></summary>

<br>

Anthropic Interpretability 隶属于 Anthropic，是一支主要关注机制可解释性、AI 安全与对齐、模型分析的前沿 AI 研究团队。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** Anthropic
- **主要方向：** 机制可解释性、AI 安全与对齐、模型分析
- **负责人：** [负责人/成员页](https://www.anthropic.com/research) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://www.anthropic.com/research) · [GitHub](https://github.com/anthropics)

#### 最近工作 · 2026-07-16

<details>
<summary><strong>1. Skills for threat modeling, scanning, triage, patching, plus an autonomous scanning harness you can /customize</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**6860**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/anthropics/defending-code-reference-harness)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：Skills for threat modeling, scanning, triage, patching, plus an autonomous scanning harness you can /customize 可通过原始链接查看完整项目、论文或数据说明。

</details>

#### 代表作

<details>
<summary><strong>1. Skills for threat modeling, scanning, triage, patching, plus an autonomous scanning harness you can /customize</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**6860**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/anthropics/defending-code-reference-harness)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：Skills for threat modeling, scanning, triage, patching, plus an autonomous scanning harness you can /customize 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>2. Anthropic&#39;s educational courses</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**22465**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/anthropics/courses)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：Anthropic&#39;s educational courses 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>3. An AI-powered security review GitHub Action using Claude to analyze code changes for security vulnerabilities.</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**5665**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/anthropics/claude-code-security-review)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：An AI-powered security review GitHub Action using Claude to analyze code changes for security vulnerabilities. 可通过原始链接查看完整项目、论文或数据说明。

</details>

</details>

<details>
<summary><img src="https://github.com/anthropics.png?size=160" width="32" height="32" alt="Anthropic Frontier Red Team logo"> &nbsp;<strong>Anthropic Frontier Red Team</strong> · <code>verified</code></summary>

<br>

Anthropic Frontier Red Team 隶属于 Anthropic，是一支主要关注红队评测、网络安全、生物安全等方向的前沿 AI 研究团队。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** Anthropic
- **主要方向：** 红队评测、网络安全、生物安全、自主系统
- **负责人：** [负责人/成员页](https://www.anthropic.com/research) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://www.anthropic.com/research) · [GitHub](https://github.com/anthropics)

#### 最近工作 · 2026-07-16

<details>
<summary><strong>1. Skills for threat modeling, scanning, triage, patching, plus an autonomous scanning harness you can /customize</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**6860**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/anthropics/defending-code-reference-harness)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：Skills for threat modeling, scanning, triage, patching, plus an autonomous scanning harness you can /customize 可通过原始链接查看完整项目、论文或数据说明。

</details>

#### 代表作

<details>
<summary><strong>1. Skills for threat modeling, scanning, triage, patching, plus an autonomous scanning harness you can /customize</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**6860**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/anthropics/defending-code-reference-harness)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：Skills for threat modeling, scanning, triage, patching, plus an autonomous scanning harness you can /customize 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>2. Anthropic&#39;s educational courses</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**22465**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/anthropics/courses)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：Anthropic&#39;s educational courses 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>3. An AI-powered security review GitHub Action using Claude to analyze code changes for security vulnerabilities.</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**5665**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/anthropics/claude-code-security-review)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：An AI-powered security review GitHub Action using Claude to analyze code changes for security vulnerabilities. 可通过原始链接查看完整项目、论文或数据说明。

</details>

</details>

<details>
<summary><img src="https://github.com/anthropics.png?size=160" width="32" height="32" alt="Anthropic Societal Impacts logo"> &nbsp;<strong>Anthropic Societal Impacts</strong> · <code>verified</code></summary>

<br>

Anthropic Societal Impacts 隶属于 Anthropic，是一支主要关注AI 社会影响、模型评测、负责任 AI的前沿 AI 研究团队。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** Anthropic
- **主要方向：** AI 社会影响、模型评测、负责任 AI
- **负责人：** [负责人/成员页](https://www.anthropic.com/research) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://www.anthropic.com/research) · [GitHub](https://github.com/anthropics)

#### 最近工作 · 2026-07-16

<details>
<summary><strong>1. Skills for threat modeling, scanning, triage, patching, plus an autonomous scanning harness you can /customize</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**6860**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/anthropics/defending-code-reference-harness)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：Skills for threat modeling, scanning, triage, patching, plus an autonomous scanning harness you can /customize 可通过原始链接查看完整项目、论文或数据说明。

</details>

#### 代表作

<details>
<summary><strong>1. Skills for threat modeling, scanning, triage, patching, plus an autonomous scanning harness you can /customize</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**6860**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/anthropics/defending-code-reference-harness)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：Skills for threat modeling, scanning, triage, patching, plus an autonomous scanning harness you can /customize 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>2. Anthropic&#39;s educational courses</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**22465**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/anthropics/courses)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：Anthropic&#39;s educational courses 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>3. An AI-powered security review GitHub Action using Claude to analyze code changes for security vulnerabilities.</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**5665**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/anthropics/claude-code-security-review)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：An AI-powered security review GitHub Action using Claude to analyze code changes for security vulnerabilities. 可通过原始链接查看完整项目、论文或数据说明。

</details>

</details>

<details>
<summary><img src="https://github.com/anthropics.png?size=160" width="32" height="32" alt="Anthropic Economic Research logo"> &nbsp;<strong>Anthropic Economic Research</strong> · <code>verified</code></summary>

<br>

Anthropic Economic Research 隶属于 Anthropic，是一支主要关注AI 经济学、AI 与劳动力、AI 应用与采用等方向的前沿 AI 研究团队。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** Anthropic
- **主要方向：** AI 经济学、AI 与劳动力、AI 应用与采用、AI 社会影响
- **负责人：** [负责人/成员页](https://www.anthropic.com/research) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://www.anthropic.com/research) · [GitHub](https://github.com/anthropics)

#### 最近工作 · 2026-07-16

<details>
<summary><strong>1. Skills for threat modeling, scanning, triage, patching, plus an autonomous scanning harness you can /customize</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**6860**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/anthropics/defending-code-reference-harness)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：Skills for threat modeling, scanning, triage, patching, plus an autonomous scanning harness you can /customize 可通过原始链接查看完整项目、论文或数据说明。

</details>

#### 代表作

<details>
<summary><strong>1. Skills for threat modeling, scanning, triage, patching, plus an autonomous scanning harness you can /customize</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**6860**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/anthropics/defending-code-reference-harness)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：Skills for threat modeling, scanning, triage, patching, plus an autonomous scanning harness you can /customize 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>2. Anthropic&#39;s educational courses</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**22465**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/anthropics/courses)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：Anthropic&#39;s educational courses 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>3. An AI-powered security review GitHub Action using Claude to analyze code changes for security vulnerabilities.</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**5665**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/anthropics/claude-code-security-review)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：An AI-powered security review GitHub Action using Claude to analyze code changes for security vulnerabilities. 可通过原始链接查看完整项目、论文或数据说明。

</details>

</details>

## 中国 C9

### Tsinghua University（4）

<details>
<summary><img src="https://github.com/thunlp.png?size=160" width="32" height="32" alt="Tsinghua Natural Language Processing Lab (THUNLP) logo"> &nbsp;<strong>Tsinghua Natural Language Processing Lab (THUNLP)</strong> · <code>verified</code></summary>

<br>

Tsinghua Natural Language Processing Lab (THUNLP) 隶属于 Tsinghua University，是一支主要关注自然语言处理、大语言模型、知识图谱等方向的高校实验室。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** Tsinghua University
- **主要方向：** 自然语言处理、大语言模型、知识图谱、智能体
- **负责人：** [负责人/成员页](https://nlp.csai.tsinghua.edu.cn/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://nlp.csai.tsinghua.edu.cn/) · [GitHub](https://github.com/thunlp)

#### 最近工作 · 2025

<details>
<summary><strong>1. JustRL: Scaling a 1.5B LLM with a Simple RL Recipe</strong> · arXiv (Cornell University) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22JustRL%3A+Scaling+a+1.5B+LLM+with+a+Simple+RL+Recipe%22)（未缓存未经核验的数字）
- GitHub Stars：**292**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2512.16649)

**基于 Abstract 的 TL;DR**

研究人员探讨了大型语言模型的强化学习中是否需要增加复杂性。他们提出了一个简单的方法JustRL，使用单阶段训练和固定超参数，实现了两种1.5B计算量的推理模型（54.9%和64.3%平均准确率）在九个数学benchmark上的state-of-the-art表现，同时使用2倍的计算资源。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2512.16649"><img src="https://ar5iv.labs.arxiv.org/html/2512.16649/assets/figures/fig2_training_dynamics.png" alt="Figure 2 : Training Dynamics of JustRL-DeepSeek-1.5B. (a) Policy entropy remains stable throughout training, oscillating naturally around 1.2-1.4 without drift or collapse. (b) Mean reward shows smooth, monotonic improvement from negative to ∼ \sim 0.4, indicating consistent learning without plateau-breaking interventions. (c) Response length naturally converges from initial verbosity ( ∼ \sim 7,000 tokens) to a stable range (4,000-5,000 tokens) with 16k max context length, without explicit length penalties." width="720"></a>

> Figure 2 : Training Dynamics of JustRL-DeepSeek-1.5B. (a) Policy entropy remains stable throughout training, oscillating naturally around 1.2-1.4 without drift or collapse. (b) Mean reward shows smooth, monotonic improvement from negative to ∼ \sim 0.4, indicating consistent learning without plateau-breaking interventions. (c) Response length naturally converges from initial verbosity ( ∼ \sim 7,000 tokens) to a stable range (4,000-5,000 tokens) with 16k max context length, without explicit length penalties.
> 来源：[原论文](https://arxiv.org/abs/2512.16649)

</details>

#### 代表作

<details>
<summary><strong>1. JustRL: Scaling a 1.5B LLM with a Simple RL Recipe</strong> · arXiv (Cornell University) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22JustRL%3A+Scaling+a+1.5B+LLM+with+a+Simple+RL+Recipe%22)（未缓存未经核验的数字）
- GitHub Stars：**292**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2512.16649)

**基于 Abstract 的 TL;DR**

研究人员探讨了大型语言模型的强化学习中是否需要增加复杂性。他们提出了一个简单的方法JustRL，使用单阶段训练和固定超参数，实现了两种1.5B计算量的推理模型（54.9%和64.3%平均准确率）在九个数学benchmark上的state-of-the-art表现，同时使用2倍的计算资源。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2512.16649"><img src="https://ar5iv.labs.arxiv.org/html/2512.16649/assets/figures/fig2_training_dynamics.png" alt="Figure 2 : Training Dynamics of JustRL-DeepSeek-1.5B. (a) Policy entropy remains stable throughout training, oscillating naturally around 1.2-1.4 without drift or collapse. (b) Mean reward shows smooth, monotonic improvement from negative to ∼ \sim 0.4, indicating consistent learning without plateau-breaking interventions. (c) Response length naturally converges from initial verbosity ( ∼ \sim 7,000 tokens) to a stable range (4,000-5,000 tokens) with 16k max context length, without explicit length penalties." width="720"></a>

> Figure 2 : Training Dynamics of JustRL-DeepSeek-1.5B. (a) Policy entropy remains stable throughout training, oscillating naturally around 1.2-1.4 without drift or collapse. (b) Mean reward shows smooth, monotonic improvement from negative to ∼ \sim 0.4, indicating consistent learning without plateau-breaking interventions. (c) Response length naturally converges from initial verbosity ( ∼ \sim 7,000 tokens) to a stable range (4,000-5,000 tokens) with 16k max context length, without explicit length penalties.
> 来源：[原论文](https://arxiv.org/abs/2512.16649)

</details>

<details>
<summary><strong>2. Ouroboros: Speculative Decoding with Large Model Enhanced Drafting (EMNLP 2024 main)</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**117**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/thunlp/Ouroboros)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：Ouroboros: Speculative Decoding with Large Model Enhanced Drafting (EMNLP 2024 main) 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>3. Enhancing Legal Case Retrieval via Scaling High-quality Synthetic Query-Candidate Pairs</strong> · arXiv (Cornell University) · 2024</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Enhancing+Legal+Case+Retrieval+via+Scaling+High-quality+Synthetic+Query-Candidate+Pairs%22)（未缓存未经核验的数字）
- GitHub Stars：**17**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2410.06581)

**基于 Abstract 的 TL;DR**

该研究旨在解决法律案件检索（Legal Case Retrieval，简称LCR）任务的两个主要挑战：现有工作主要关注案件之间的检索，使用长句子，这不符合实际场景；现有数据集规模有限，只有几百个查询，不足以满足现有的大数据需求。该研究提出了一种自动化方法来构建合成的查询候选对，并建立了最大的LCR数据集LEAD，超过现有数据集数百倍。实验结果表明，使用我们的构造数据，可以实现现有两个广泛使用的LCRbenchmark的最佳结果。此外，该方法也可以应用于民事案件，取得了令人满意的效果。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2410.06581"><img src="https://ar5iv.labs.arxiv.org/html/2410.06581/assets/x1.png" alt="Figure 1: An example for legal case retrieval, where the key facts are in blue." width="720"></a>

> Figure 1: An example for legal case retrieval, where the key facts are in blue.
> 来源：[原论文](https://arxiv.org/abs/2410.06581)

</details>

</details>

<details>
<summary><img src="https://github.com/THUDM.png?size=160" width="32" height="32" alt="Tsinghua Knowledge Engineering Group / THUDM logo"> &nbsp;<strong>Tsinghua Knowledge Engineering Group / THUDM</strong> · <code>verified</code></summary>

<br>

Tsinghua Knowledge Engineering Group / THUDM 隶属于 Tsinghua University，是一支主要关注基础模型、知识图谱、多模态学习等方向的校企联合实验室。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** Tsinghua University
- **主要方向：** 基础模型、知识图谱、多模态学习、智能体
- **负责人：** [负责人/成员页](https://keg.cs.tsinghua.edu.cn/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://keg.cs.tsinghua.edu.cn/) · [GitHub](https://github.com/THUDM)

#### 最近工作 · 2024

<details>
<summary><strong>1. LongWriter: Unleashing 10,000+ Word Generation from Long Context LLMs</strong> · arXiv (Cornell University) · 2024</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22LongWriter%3A+Unleashing+10%2C000%2B+Word+Generation+from+Long+Context+LLMs%22)（未缓存未经核验的数字）
- GitHub Stars：**1868**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2408.07055)

**基于 Abstract 的 TL;DR**

现有长文本大语言模型（LLM）在处理长输出时遇到瓶颈，主要原因是训练数据中长输出的例子相对稀缺。该研究引入了AgentWrite管道，分解超长生成任务为小任务，从而使现有LLM能够生成超过20,000字的合理输出。通过构建LongWriter-6k数据集和LongBench-Write评估指标，研究者 successfully Scaling LLM 的输出长度至10,000字以上，同时保持输出质量。

</details>

#### 代表作

<details>
<summary><strong>1. LongWriter: Unleashing 10,000+ Word Generation from Long Context LLMs</strong> · arXiv (Cornell University) · 2024</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22LongWriter%3A+Unleashing+10%2C000%2B+Word+Generation+from+Long+Context+LLMs%22)（未缓存未经核验的数字）
- GitHub Stars：**1868**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2408.07055)

**基于 Abstract 的 TL;DR**

现有长文本大语言模型（LLM）在处理长输出时遇到瓶颈，主要原因是训练数据中长输出的例子相对稀缺。该研究引入了AgentWrite管道，分解超长生成任务为小任务，从而使现有LLM能够生成超过20,000字的合理输出。通过构建LongWriter-6k数据集和LongBench-Write评估指标，研究者 successfully Scaling LLM 的输出长度至10,000字以上，同时保持输出质量。

</details>

<details>
<summary><strong>2. ReST-MCTS*: LLM Self-Training via Process Reward Guided Tree Search</strong> · arXiv (Cornell University) · 2024</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22ReST-MCTS*%3A+LLM+Self-Training+via+Process+Reward+Guided+Tree+Search%22)（未缓存未经核验的数字）
- GitHub Stars：**710**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2406.03816)

**基于 Abstract 的 TL;DR**

该研究提出了一种称为ReST-MCTS*的强化学习方法，旨在通过集成过程奖励指导和树搜索MCTS*来收集高质量的推理轨迹和每步价值，以训练策略和奖励模型。结果表明，这种方法可以实现更高的准确率，并且可以连续改进多个语言模型，超越其他自我学习算法。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2406.03816"><img src="https://ar5iv.labs.arxiv.org/html/2406.03816/assets/x5.png" alt="Figure 4 : Detailed process of new sample data generation for the self-training framework." width="720"></a>

> Figure 4 : Detailed process of new sample data generation for the self-training framework.
> 来源：[原论文](https://arxiv.org/abs/2406.03816)

</details>

<details>
<summary><strong>3. LongAlign: A Recipe for Long Context Alignment of Large Language Models</strong> · arXiv (Cornell University) · 2024</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22LongAlign%3A+A+Recipe+for+Long+Context+Alignment+of+Large+Language+Models%22)（未缓存未经核验的数字）
- GitHub Stars：**262**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2401.18058)

**基于 Abstract 的 TL;DR**

该研究提出了一种长文本对齐的方法，称为LongAlign。通过构建一个长指令遵循数据集、采用packing和排序批量策略以及平衡损失方法，实验结果表明LongAlign在长文本任务上出perform了现有方法，达到了30%的优势，同时保持对短指令任务的准确性。

</details>

</details>

<details>
<summary><img src="https://github.com/thu-coai.png?size=160" width="32" height="32" alt="Tsinghua Conversational AI Group (CoAI) logo"> &nbsp;<strong>Tsinghua Conversational AI Group (CoAI)</strong> · <code>verified</code></summary>

<br>

Tsinghua Conversational AI Group (CoAI) 隶属于 Tsinghua University，是一支主要关注对话智能、自然语言处理、大语言模型等方向的高校研究组。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** Tsinghua University
- **主要方向：** 对话智能、自然语言处理、大语言模型、AI 对齐
- **负责人：** [负责人/成员页](https://github.com/thu-coai) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [GitHub](https://github.com/thu-coai)

#### 最近工作 · 2024

<details>
<summary><strong>3. Benchmarking Complex Instruction-Following with Multiple Constraints Composition</strong> · arXiv (Cornell University) · 2024</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Benchmarking+Complex+Instruction-Following+with+Multiple+Constraints+Composition%22)（未缓存未经核验的数字）
- GitHub Stars：**102**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2407.03978)

**基于 Abstract 的 TL;DR**

研究者提出ComplexBench，一个评估大型语言模型（LLM）复杂指令遵循能力的基准。该benchmark使用分类系统和高质量数据来评估LLMs在处理多个约束组成的复杂指令时的能力。结果表明，ComplexBench揭示了现有LLMs在处理复杂指令时存在显著缺陷。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2407.03978"><img src="https://ar5iv.labs.arxiv.org/html/2407.03978/assets/x1.png" alt="Figure 1 : An example of ComplexBench test case. All constraint dimensions contained in the instruction are marked with underlines and colors, which are categorized into three constraint types in our taxonomy: Format, Semantic, and Utility. Below is the composition structure of the instructions, where these constraint dimensions are combined through three composition types: And , Chain , and Selection ." width="720"></a>

> Figure 1 : An example of ComplexBench test case. All constraint dimensions contained in the instruction are marked with underlines and colors, which are categorized into three constraint types in our taxonomy: Format, Semantic, and Utility. Below is the composition structure of the instructions, where these constraint dimensions are combined through three composition types: And , Chain , and Selection .
> 来源：[原论文](https://arxiv.org/abs/2407.03978)

</details>

#### 代表作

<details>
<summary><strong>1. Official github repo for SafetyBench, a comprehensive benchmark to evaluate LLMs&#39; safety. [ACL 2024]</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**296**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/thu-coai/SafetyBench)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：Official github repo for SafetyBench, a comprehensive benchmark to evaluate LLMs&#39; safety. [ACL 2024] 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>2. ShieldLM: Empowering LLMs as Aligned, Customizable and Explainable Safety Detectors</strong> · arXiv (Cornell University) · 2024</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22ShieldLM%3A+Empowering+LLMs+as+Aligned%2C+Customizable+and+Explainable+Safety+Detectors%22)（未缓存未经核验的数字）
- GitHub Stars：**231**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2402.16444)

**基于 Abstract 的 TL;DR**

该研究提出了ShieldLM，一个基于大语言模型的安全检测器，可以根据不同标准检测安全性，并提供解释。通过实验结果表明，ShieldLM在多个测试集上优于强基线，表现出可定制化和解释能力。

</details>

<details>
<summary><strong>3. Benchmarking Complex Instruction-Following with Multiple Constraints Composition</strong> · arXiv (Cornell University) · 2024</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Benchmarking+Complex+Instruction-Following+with+Multiple+Constraints+Composition%22)（未缓存未经核验的数字）
- GitHub Stars：**102**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2407.03978)

**基于 Abstract 的 TL;DR**

研究者提出ComplexBench，一个评估大型语言模型（LLM）复杂指令遵循能力的基准。该benchmark使用分类系统和高质量数据来评估LLMs在处理多个约束组成的复杂指令时的能力。结果表明，ComplexBench揭示了现有LLMs在处理复杂指令时存在显著缺陷。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2407.03978"><img src="https://ar5iv.labs.arxiv.org/html/2407.03978/assets/x1.png" alt="Figure 1 : An example of ComplexBench test case. All constraint dimensions contained in the instruction are marked with underlines and colors, which are categorized into three constraint types in our taxonomy: Format, Semantic, and Utility. Below is the composition structure of the instructions, where these constraint dimensions are combined through three composition types: And , Chain , and Selection ." width="720"></a>

> Figure 1 : An example of ComplexBench test case. All constraint dimensions contained in the instruction are marked with underlines and colors, which are categorized into three constraint types in our taxonomy: Format, Semantic, and Utility. Below is the composition structure of the instructions, where these constraint dimensions are combined through three composition types: And , Chain , and Selection .
> 来源：[原论文](https://arxiv.org/abs/2407.03978)

</details>

</details>

<details>
<summary><img src="https://www.google.com/s2/favicons?domain_url=https%3A%2F%2Fair.tsinghua.edu.cn&amp;sz=128" width="32" height="32" alt="Institute for AI Industry Research (AIR), Tsinghua University logo"> &nbsp;<strong>Institute for AI Industry Research (AIR), Tsinghua University</strong> · <code>provisional</code></summary>

<br>

Institute for AI Industry Research (AIR), Tsinghua University 隶属于 Tsinghua University，是一支主要关注大语言模型、AI 系统、机器人等方向的高校研究院。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** Tsinghua University
- **主要方向：** 大语言模型、AI 系统、机器人、AI for Science
- **负责人：** [负责人/成员页](https://air.tsinghua.edu.cn/en/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://air.tsinghua.edu.cn/en/)

#### 最近工作 · 日期待核验

<details>
<summary><strong>1. Big Data Intelligence （BDI）Lab</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://air.tsinghua.edu.cn/en/Research1/Big_Data_Intelligence_Lab.htm)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：Big Data Intelligence （BDI）Lab 可通过原始链接查看完整项目、论文或数据说明。

</details>

#### 代表作

<details>
<summary><strong>1. Big Data Intelligence （BDI）Lab</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://air.tsinghua.edu.cn/en/Research1/Big_Data_Intelligence_Lab.htm)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：Big Data Intelligence （BDI）Lab 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>2. DISCOVER Laboratory</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://air.tsinghua.edu.cn/en/Research1/DISCOVER_Laboratory.htm)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：DISCOVER Laboratory 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>3. 01/29 2026 China’s AI: The Latest Trends Have Arrived</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://mp.weixin.qq.com/s/86JPTvjuPY0TwDeb9bNOBw)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：01/29 2026 China’s AI: The Latest Trends Have Arrived 可通过原始链接查看完整项目、论文或数据说明。

</details>

</details>

### Peking University（5）

<details>
<summary><img src="https://github.com/PKU-Alignment.png?size=160" width="32" height="32" alt="PKU Alignment logo"> &nbsp;<strong>PKU Alignment</strong> · <code>verified</code></summary>

<br>

PKU Alignment 隶属于 Peking University，是一支主要关注AI 对齐、强化学习、多模态学习等方向的高校研究组。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** Peking University
- **主要方向：** AI 对齐、强化学习、多模态学习、AI 安全与对齐
- **负责人：** [负责人/成员页](https://github.com/PKU-Alignment) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [GitHub](https://github.com/PKU-Alignment)

#### 最近工作 · 2025

<details>
<summary><strong>2. SafeVLA: Towards Safety Alignment of Vision-Language-Action Model via Constrained Learning</strong> · arXiv (Cornell University) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22SafeVLA%3A+Towards+Safety+Alignment+of+Vision-Language-Action+Model+via+Constrained+Learning%22)（未缓存未经核验的数字）
- GitHub Stars：**154**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2503.03480)

**基于 Abstract 的 TL;DR**

该研究探讨了如何在视觉-语言-行动模型（Vision-language-action models，VLAs）中明确地整合安全约束。研究人员提出了一个集成安全方法（Integrated Safety Approach，ISA），通过系统地建模安全要求、激活多种不安全行为，并使用安全强化学习来有效地约束VLA政策，从而在严格的评估下确保其安全性。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2503.03480"><img src="https://ar5iv.labs.arxiv.org/html/2503.03480/assets/x1.png" alt="Figure 1 : The overview of SafeVLA pipeline. Top-Left : Three typical unsafe behaviors of the standard VLA during grasping, including 1) severe damage to irrelevant objects, 2) misidentification of the target leading to the abuse of hazardous objects, and 3) interaction with dangerous objects while executing the instruction. Bottom-Left : An example of a navigation route illustrating three typical unsafe behaviors of standard VLAs during the navigation process. Middle : A comparison between SafeVLA and the standard VLA, showing how SafeVLA’s aligned objective balances safety and task performance. Right : (a) SafeVLA is significantly safer than baseline methods and achieves state-of-the-art t" width="720"></a>

> Figure 1 : The overview of SafeVLA pipeline. Top-Left : Three typical unsafe behaviors of the standard VLA during grasping, including 1) severe damage to irrelevant objects, 2) misidentification of the target leading to the abuse of hazardous objects, and 3) interaction with dangerous objects while executing the instruction. Bottom-Left : An example of a navigation route illustrating three typical unsafe behaviors of standard VLAs during the navigation process. Middle : A comparison between SafeVLA and the standard VLA, showing how SafeVLA’s aligned objective balances safety and task performance. Right : (a) SafeVLA is significantly safer than baseline methods and achieves state-of-the-art t
> 来源：[原论文](https://arxiv.org/abs/2503.03480)

</details>

#### 代表作

<details>
<summary><strong>1. Aligner: Efficient Alignment by Learning to Correct</strong> · arXiv (Cornell University) · 2024</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Aligner%3A+Efficient+Alignment+by+Learning+to+Correct%22)（未缓存未经核验的数字）
- GitHub Stars：**194**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2402.02416)

**基于 Abstract 的 TL;DR**

该研究开发了一个名为Aligner的模型无关的对齐方法，旨在解决大型语言模型（LLM）快速迭代和有效对齐的挑战。通过学习偏好答案与不受欢迎答案之间的纠正余数，Aligner可以直接应用于各种开源和API模型，只需进行一次训练。实验结果表明，Aligner在11种不同LLM上获得了平均改进68.9%的有用性和23.8%的无害性，同时有效减少幻听。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2402.02416"><img src="https://ar5iv.labs.arxiv.org/html/2402.02416/assets/x5.png" alt="Figure 5: Distribution of helpfulness and harmlessness scores in training and evaluation sets. (a) The distribution shift in answers and correctional answers in the training dataset; (b) redistribution shift of Aligner -7B, based on upstream models such as GPT-4 (b1), Alpaca-7B (b2) and Llama2-70B-Chat (b3). We found that (1) The correctional answer in the training dataset surpasses the original answers in terms of both helpfulness and harmlessness; (2) The refuse-to-answer pattern of GPT-4 created an area of overcorrected answers where both helpful and harmless scores are low, and our Aligner -7B improved these answers by providing additional information and corrections. (3) The Alpaca-7B m" width="720"></a>

> Figure 5: Distribution of helpfulness and harmlessness scores in training and evaluation sets. (a) The distribution shift in answers and correctional answers in the training dataset; (b) redistribution shift of Aligner -7B, based on upstream models such as GPT-4 (b1), Alpaca-7B (b2) and Llama2-70B-Chat (b3). We found that (1) The correctional answer in the training dataset surpasses the original answers in terms of both helpfulness and harmlessness; (2) The refuse-to-answer pattern of GPT-4 created an area of overcorrected answers where both helpful and harmless scores are low, and our Aligner -7B improved these answers by providing additional information and corrections. (3) The Alpaca-7B m
> 来源：[原论文](https://arxiv.org/abs/2402.02416)

</details>

<details>
<summary><strong>2. SafeVLA: Towards Safety Alignment of Vision-Language-Action Model via Constrained Learning</strong> · arXiv (Cornell University) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22SafeVLA%3A+Towards+Safety+Alignment+of+Vision-Language-Action+Model+via+Constrained+Learning%22)（未缓存未经核验的数字）
- GitHub Stars：**154**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2503.03480)

**基于 Abstract 的 TL;DR**

该研究探讨了如何在视觉-语言-行动模型（Vision-language-action models，VLAs）中明确地整合安全约束。研究人员提出了一个集成安全方法（Integrated Safety Approach，ISA），通过系统地建模安全要求、激活多种不安全行为，并使用安全强化学习来有效地约束VLA政策，从而在严格的评估下确保其安全性。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2503.03480"><img src="https://ar5iv.labs.arxiv.org/html/2503.03480/assets/x1.png" alt="Figure 1 : The overview of SafeVLA pipeline. Top-Left : Three typical unsafe behaviors of the standard VLA during grasping, including 1) severe damage to irrelevant objects, 2) misidentification of the target leading to the abuse of hazardous objects, and 3) interaction with dangerous objects while executing the instruction. Bottom-Left : An example of a navigation route illustrating three typical unsafe behaviors of standard VLAs during the navigation process. Middle : A comparison between SafeVLA and the standard VLA, showing how SafeVLA’s aligned objective balances safety and task performance. Right : (a) SafeVLA is significantly safer than baseline methods and achieves state-of-the-art t" width="720"></a>

> Figure 1 : The overview of SafeVLA pipeline. Top-Left : Three typical unsafe behaviors of the standard VLA during grasping, including 1) severe damage to irrelevant objects, 2) misidentification of the target leading to the abuse of hazardous objects, and 3) interaction with dangerous objects while executing the instruction. Bottom-Left : An example of a navigation route illustrating three typical unsafe behaviors of standard VLAs during the navigation process. Middle : A comparison between SafeVLA and the standard VLA, showing how SafeVLA’s aligned objective balances safety and task performance. Right : (a) SafeVLA is significantly safer than baseline methods and achieves state-of-the-art t
> 来源：[原论文](https://arxiv.org/abs/2503.03480)

</details>

<details>
<summary><strong>3. SafeDreamer: Safe Reinforcement Learning with World Models</strong> · arXiv (Cornell University) · 2023</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22SafeDreamer%3A+Safe+Reinforcement+Learning+with+World+Models%22)（未缓存未经核验的数字）
- GitHub Stars：**105**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2307.07176)

**基于 Abstract 的 TL;DR**

该研究旨在解决RL在实际应用中的安全性问题。SafeDreamer算法通过将Lagrangian方法整合到世界模型规划过程中，实现了近零成本的性能，在Safety-Gymnasiumbenchmark上取得了成功。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2307.07176"><img src="https://ar5iv.labs.arxiv.org/html/2307.07176/assets/x2.png" alt="Figure 2: The Architecture of SafeDreamer. (a) illustrates all components of SafeDreamer, which distinguishes costs as safety indicators from rewards and balances them using the Lagrangian method and a safe planner. The OSRP (b) and OSRP-Lag (c) variants execute online safety-reward planning (OSRP) within the world models for action generation, especially OSRP-Lag integrates online planning with the Lagrangian approach to balance long-term rewards and costs. The BSRP-Lag variant of SafeDreamer (d) employs background safety-reward planning (BSRP) via the Lagrangian method within the world models to update a safe actor." width="720"></a>

> Figure 2: The Architecture of SafeDreamer. (a) illustrates all components of SafeDreamer, which distinguishes costs as safety indicators from rewards and balances them using the Lagrangian method and a safe planner. The OSRP (b) and OSRP-Lag (c) variants execute online safety-reward planning (OSRP) within the world models for action generation, especially OSRP-Lag integrates online planning with the Lagrangian approach to balance long-term rewards and costs. The BSRP-Lag variant of SafeDreamer (d) employs background safety-reward planning (BSRP) via the Lagrangian method within the world models to update a safe actor.
> 来源：[原论文](https://arxiv.org/abs/2307.07176)

</details>

</details>

<details>
<summary><img src="https://github.com/PKU-DAIR.png?size=160" width="32" height="32" alt="PKU Data and Intelligence Research Lab (DAIR) logo"> &nbsp;<strong>PKU Data and Intelligence Research Lab (DAIR)</strong> · <code>verified</code></summary>

<br>

PKU Data and Intelligence Research Lab (DAIR) 隶属于 Peking University，是一支主要关注AI 系统、分布式训练、数据库等方向的高校实验室。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** Peking University
- **主要方向：** AI 系统、分布式训练、数据库、机器学习
- **负责人：** [负责人/成员页](https://github.com/PKU-DAIR) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [GitHub](https://github.com/PKU-DAIR)

#### 最近工作 · 2025

<details>
<summary><strong>2. A-Tune-Online: Efficient and QoS-Aware Online Configuration Tuning for Dynamic Workloads</strong> · 2025 IEEE 41st International Conference on Data Engineering (ICDE) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22A-Tune-Online%3A+Efficient+and+QoS-Aware+Online+Configuration+Tuning+for+Dynamic+Workloads%22)（未缓存未经核验的数字）
- GitHub Stars：**1**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://doi.org/10.1109/icde65448.2025.00164)

**基于 Abstract 的 TL;DR**

该研究提出了A-Tune-Online系统，旨在解决在线服务配置的自动化调优问题。系统通过多阶段检测策略和知识转移机制来实现高效、稳定和质量保证。实验结果表明A-Tune-Online比现有系统具有更好的性能和效率。

</details>

#### 代表作

<details>
<summary><strong>1. A scalable graph learning toolkit for extremely large graph datasets. (WWW&#39;22,  🏆 Best Student Paper Award)</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**158**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/PKU-DAIR/SGL)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：A scalable graph learning toolkit for extremely large graph datasets. (WWW&#39;22, 🏆 Best Student Paper Award) 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>2. A-Tune-Online: Efficient and QoS-Aware Online Configuration Tuning for Dynamic Workloads</strong> · 2025 IEEE 41st International Conference on Data Engineering (ICDE) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22A-Tune-Online%3A+Efficient+and+QoS-Aware+Online+Configuration+Tuning+for+Dynamic+Workloads%22)（未缓存未经核验的数字）
- GitHub Stars：**1**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://doi.org/10.1109/icde65448.2025.00164)

**基于 Abstract 的 TL;DR**

该研究提出了A-Tune-Online系统，旨在解决在线服务配置的自动化调优问题。系统通过多阶段检测策略和知识转移机制来实现高效、稳定和质量保证。实验结果表明A-Tune-Online比现有系统具有更好的性能和效率。

</details>

<details>
<summary><strong>3. A comprehensive guide for beginners in the field of data management and artificial intelligence.</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**674**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/PKU-DAIR/Starter-Guide)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：A comprehensive guide for beginners in the field of data management and artificial intelligence. 可通过原始链接查看完整项目、论文或数据说明。

</details>

</details>

<details>
<summary><img src="https://www.google.com/s2/favicons?domain_url=https%3A%2F%2Fpku.ai&amp;sz=128" width="32" height="32" alt="PKU Cognitive Reasoning Lab (CoRe) logo"> &nbsp;<strong>PKU Cognitive Reasoning Lab (CoRe)</strong> · <code>verified</code></summary>

<br>

PKU Cognitive Reasoning Lab (CoRe) 隶属于 Peking University，是一支主要关注认知推理、计算机视觉、具身智能等方向的高校实验室。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** Peking University
- **主要方向：** 认知推理、计算机视觉、具身智能、机器人
- **负责人：** [负责人/成员页](https://pku.ai/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://pku.ai/)

#### 最近工作 · 2026

<details>
<summary><strong>1. Proposing and solving olympiad geometry with guided tree search</strong> · Nature Machine Intelligence · 2026</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Proposing+and+solving+olympiad+geometry+with+guided+tree+search%22)（未缓存未经核验的数字）
- [论文 / 项目原始入口](https://doi.org/10.1038/s42256-025-01164-x)

**基于 Abstract 的 TL;DR**

研究者开发了TongGeometry，一个能够发现和证明奥林匹克级几何定理的神经符号系统。通过使用指导树搜索，TongGeometry在同等计算资源下建立了更大的几何定理库，并且在国际数学奥林匹克竞赛中获得了成功。

</details>

#### 代表作

<details>
<summary><strong>1. Proposing and solving olympiad geometry with guided tree search</strong> · Nature Machine Intelligence · 2026</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Proposing+and+solving+olympiad+geometry+with+guided+tree+search%22)（未缓存未经核验的数字）
- [论文 / 项目原始入口](https://doi.org/10.1038/s42256-025-01164-x)

**基于 Abstract 的 TL;DR**

研究者开发了TongGeometry，一个能够发现和证明奥林匹克级几何定理的神经符号系统。通过使用指导树搜索，TongGeometry在同等计算资源下建立了更大的几何定理库，并且在国际数学奥林匹克竞赛中获得了成功。

</details>

<details>
<summary><strong>2. Combined evidence from artificial neural networks and human brain-lesion models reveals that language modulates vision in human perception</strong> · Nature Human Behaviour · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Combined+evidence+from+artificial+neural+networks+and+human+brain-lesion+models+reveals+that+language+modulates+vision+in+human+perception%22)（未缓存未经核验的数字）
- [论文 / 项目原始入口](https://doi.org/10.1038/s41562-025-02357-5)

**摘要 / 项目说明**

已匹配论文《Combined evidence from artificial neural networks and human brain-lesion models reveals that language modulates vision in human perception》，但开放元数据暂未提供 Abstract；请通过论文原文查看方法与结论。

</details>

<details>
<summary><strong>3. Embedding high-resolution touch across robotic hands enables adaptive human-like grasping</strong> · Research Square · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Embedding+high-resolution+touch+across+robotic+hands+enables+adaptive+human-like+grasping%22)（未缓存未经核验的数字）
- [论文 / 项目原始入口](https://doi.org/10.21203/rs.3.rs-5666566/v1)

**摘要 / 项目说明**

已匹配论文《Embedding high-resolution touch across robotic hands enables adaptive human-like grasping》，但开放元数据暂未提供 Abstract；请通过论文原文查看方法与结论。

</details>

</details>

<details>
<summary><img src="https://www.google.com/s2/favicons?domain_url=https%3A%2F%2Fcamera.pku.edu.cn&amp;sz=128" width="32" height="32" alt="PKU Camera Intelligence Lab logo"> &nbsp;<strong>PKU Camera Intelligence Lab</strong> · <code>verified</code></summary>

<br>

PKU Camera Intelligence Lab 隶属于 Peking University，是一支主要关注计算机视觉、计算摄影、视频生成等方向的高校实验室。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** Peking University
- **主要方向：** 计算机视觉、计算摄影、视频生成、多模态学习
- **负责人：** [Boxin Shi](https://camera.pku.edu.cn/team)（Principal Investigator）
- **官方入口：** [官网](https://camera.pku.edu.cn/)

#### 最近工作 · 2025

<details>
<summary><strong>3. EventAid: Benchmarking Event-Aided Image/Video Enhancement Algorithms With Real-Captured Hybrid Dataset</strong> · IEEE Transactions on Pattern Analysis and Machine Intelligence · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22EventAid%3A+Benchmarking+Event-Aided+Image%2FVideo+Enhancement+Algorithms+With+Real-Captured+Hybrid+Dataset%22)（未缓存未经核验的数字）
- [论文 / 项目原始入口](https://doi.org/10.1109/tpami.2025.3568333)

**基于 Abstract 的 TL;DR**

该研究探讨了事件摄像技术在图像和视频增强方面的应用，利用事件摄像器来超越传统帧基准摄像器的优势。研究重点是五个事件辅助图像/视频增强任务（即事件基于视频重建、事件辅助高帧率视频重建、图像去雾、图像超分辨率和高动态范围图像重建），并提供了不同事件属性的影响分析、一个真实捕获的标签数据集以及对主流事件模拟器的评估。

</details>

#### 代表作

<details>
<summary><strong>1. V2V: Scaling event-based vision through efficient video-to-voxel simulation</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://camera.pku.edu.cn/publication)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：V2V: Scaling event-based vision through efficient video-to-voxel simulation 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>2. Dense metric depth estimation via event-based differential focus volume prompting</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://camera.pku.edu.cn/publication)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：Dense metric depth estimation via event-based differential focus volume prompting 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>3. EventAid: Benchmarking Event-Aided Image/Video Enhancement Algorithms With Real-Captured Hybrid Dataset</strong> · IEEE Transactions on Pattern Analysis and Machine Intelligence · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22EventAid%3A+Benchmarking+Event-Aided+Image%2FVideo+Enhancement+Algorithms+With+Real-Captured+Hybrid+Dataset%22)（未缓存未经核验的数字）
- [论文 / 项目原始入口](https://doi.org/10.1109/tpami.2025.3568333)

**基于 Abstract 的 TL;DR**

该研究探讨了事件摄像技术在图像和视频增强方面的应用，利用事件摄像器来超越传统帧基准摄像器的优势。研究重点是五个事件辅助图像/视频增强任务（即事件基于视频重建、事件辅助高帧率视频重建、图像去雾、图像超分辨率和高动态范围图像重建），并提供了不同事件属性的影响分析、一个真实捕获的标签数据集以及对主流事件模拟器的评估。

</details>

</details>

<details>
<summary><img src="https://github.com/PKU-Wu-Lab.png?size=160" width="32" height="32" alt="PKU Institute of Computational Linguistics — Wu Lab logo"> &nbsp;<strong>PKU Institute of Computational Linguistics — Wu Lab</strong> · <code>verified</code></summary>

<br>

PKU Institute of Computational Linguistics — Wu Lab 隶属于 Peking University，是一支主要关注自然语言处理、机器翻译、多模态推理等方向的高校研究组。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** Peking University
- **主要方向：** 自然语言处理、机器翻译、多模态推理、模型融合
- **负责人：** [负责人/成员页](https://github.com/PKU-Wu-Lab) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [GitHub](https://github.com/PKU-Wu-Lab) · [Hugging Face](https://huggingface.co/PKU-Wu-Lab)

#### 最近工作 · 2026-07-09

<details>
<summary><strong>1. RepoZero</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**1**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/PKU-Wu-Lab/RepoZero)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：RepoZero 可通过原始链接查看完整项目、论文或数据说明。

</details>

#### 代表作

<details>
<summary><strong>1. RepoZero</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**1**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/PKU-Wu-Lab/RepoZero)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：RepoZero 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>2. Research track · Natural Language Processing</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://github.com/PKU-Wu-Lab)

**摘要 / 项目说明**

这是团队的官方研究入口，可继续访问其研究方向、项目或论文列表；该条目不是单篇论文，因此不展示论文引用量。

</details>

<details>
<summary><strong>3. Research track · Machine Translation</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://huggingface.co/PKU-Wu-Lab)

**摘要 / 项目说明**

这是团队的官方研究入口，可继续访问其研究方向、项目或论文列表；该条目不是单篇论文，因此不展示论文引用量。

</details>

</details>

### Zhejiang University（3）

<details>
<summary><img src="https://github.com/zjunlp.png?size=160" width="32" height="32" alt="Zhejiang University NLP &amp; Knowledge Graph Group logo"> &nbsp;<strong>Zhejiang University NLP &amp; Knowledge Graph Group</strong> · <code>verified</code></summary>

<br>

Zhejiang University NLP & Knowledge Graph Group 隶属于 Zhejiang University，是一支主要关注自然语言处理、知识图谱、智能体等方向的高校实验室。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** Zhejiang University
- **主要方向：** 自然语言处理、知识图谱、智能体、模型编辑
- **负责人：** [负责人/成员页](https://zjunlp.github.io/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://zjunlp.github.io/) · [GitHub](https://github.com/zjunlp)

#### 最近工作 · 2025

<details>
<summary><strong>2. LightMem: Lightweight and Efficient Memory-Augmented Generation</strong> · arXiv (Cornell University) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22LightMem%3A+Lightweight+and+Efficient+Memory-Augmented+Generation%22)（未缓存未经核验的数字）
- GitHub Stars：**1036**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2510.18866)

**基于 Abstract 的 TL;DR**

研究人员开发了一个名为LightMem的新记忆系统，旨在在Large Language Models（LLMs）中有效利用历史互动信息。该系统通过三个阶段实现，包括感知式感知、主题相关短期记忆和长期记忆。实验结果表明，LightMem在QA准确率、token使用量和API调用数量方面都取得了显著改进。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2510.18866"><img src="https://ar5iv.labs.arxiv.org/html/2510.18866/assets/figure/Lightmem.png" alt="Figure 3: The LightMem architecture. Our LightMem consists of three modules: a) implements an efficient Sensory Memory Module that selectively preserves salient information from raw input, b) realizes a concise STM Module for transient information processing, and c) provides an LTM module designed to minimize retrieval latency." width="720"></a>

> Figure 3: The LightMem architecture. Our LightMem consists of three modules: a) implements an efficient Sensory Memory Module that selectively preserves salient information from raw input, b) realizes a concise STM Module for transient information processing, and c) provides an LTM module designed to minimize retrieval latency.
> 来源：[原论文](https://arxiv.org/abs/2510.18866)

</details>

#### 代表作

<details>
<summary><strong>1. [ACL 2024] An Easy-to-use Knowledge Editing Framework for LLMs.</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**2886**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/zjunlp/EasyEdit)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：[ACL 2024] An Easy-to-use Knowledge Editing Framework for LLMs. 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>2. LightMem: Lightweight and Efficient Memory-Augmented Generation</strong> · arXiv (Cornell University) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22LightMem%3A+Lightweight+and+Efficient+Memory-Augmented+Generation%22)（未缓存未经核验的数字）
- GitHub Stars：**1036**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2510.18866)

**基于 Abstract 的 TL;DR**

研究人员开发了一个名为LightMem的新记忆系统，旨在在Large Language Models（LLMs）中有效利用历史互动信息。该系统通过三个阶段实现，包括感知式感知、主题相关短期记忆和长期记忆。实验结果表明，LightMem在QA准确率、token使用量和API调用数量方面都取得了显著改进。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2510.18866"><img src="https://ar5iv.labs.arxiv.org/html/2510.18866/assets/figure/Lightmem.png" alt="Figure 3: The LightMem architecture. Our LightMem consists of three modules: a) implements an efficient Sensory Memory Module that selectively preserves salient information from raw input, b) realizes a concise STM Module for transient information processing, and c) provides an LTM module designed to minimize retrieval latency." width="720"></a>

> Figure 3: The LightMem architecture. Our LightMem consists of three modules: a) implements an efficient Sensory Memory Module that selectively preserves salient information from raw input, b) realizes a concise STM Module for transient information processing, and c) provides an LTM module designed to minimize retrieval latency.
> 来源：[原论文](https://arxiv.org/abs/2510.18866)

</details>

<details>
<summary><strong>3. OmniThink: Expanding Knowledge Boundaries in Machine Writing through Thinking</strong> · arXiv (Cornell University) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22OmniThink%3A+Expanding+Knowledge+Boundaries+in+Machine+Writing+through+Thinking%22)（未缓存未经核验的数字）
- GitHub Stars：**487**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2501.09751)

**基于 Abstract 的 TL;DR**

研究问题是机器写作中使用大型语言模型的检索增强方法，限制了生成具有丰富信息的内容。 OmniThink 是一种慢思考的机器写作框架，模拟人类学习过程中的逐步深化知识。实验结果表明，OmniThink 提高了生成文章的知识密度，而不会损害逻辑一致性和深度。

</details>

</details>

<details>
<summary><img src="https://github.com/ZJU-REAL.png?size=160" width="32" height="32" alt="ZJU Reasoning, Evaluation and Agents Lab (REAL) logo"> &nbsp;<strong>ZJU Reasoning, Evaluation and Agents Lab (REAL)</strong> · <code>verified</code></summary>

<br>

ZJU Reasoning, Evaluation and Agents Lab (REAL) 隶属于 Zhejiang University，是一支主要关注大语言模型、机器推理、智能体等方向的高校实验室。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** Zhejiang University
- **主要方向：** 大语言模型、机器推理、智能体、多模态学习
- **负责人：** [负责人/成员页](https://github.com/ZJU-REAL) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [GitHub](https://github.com/ZJU-REAL)

#### 最近工作 · 2025

<details>
<summary><strong>2. SpatialLadder: Progressive Training for Spatial Reasoning in Vision-Language Models</strong> · arXiv (Cornell University) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22SpatialLadder%3A+Progressive+Training+for+Spatial+Reasoning+in+Vision-Language+Models%22)（未缓存未经核验的数字）
- GitHub Stars：**99**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2510.08531)

**基于 Abstract 的 TL;DR**

研究表明，当前的视觉语言模型（VLM）难以实现稳健的空间推理能力。该研究提出了一种通过逐步建立感知和理解的层次结构来解决这一问题的方法。通过构建了一个包含26,610个样本的多模态数据集，并设计了一个三阶段的进步训练框架，该框架首先建立空间感知，接着发展空间理解，最终强化复杂推理。该方法得到了3B参数模型SpatialLadder的成功应用，实现了对空间推理benchmark的state-of-the-art表现，且在出域测试中保持了强大的 generalize能力。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2510.08531"><img src="https://ar5iv.labs.arxiv.org/html/2510.08531/assets/x4.png" alt="Figure 4: Impact of progressive training stages. Left: accuracy rewards over training steps; Middle: reward standard deviation over training steps; Right: VSI-Bench performance comparison." width="720"></a>

> Figure 4: Impact of progressive training stages. Left: accuracy rewards over training steps; Middle: reward standard deviation over training steps; Right: VSI-Bench performance comparison.
> 来源：[原论文](https://arxiv.org/abs/2510.08531)

</details>

#### 代表作

<details>
<summary><strong>1. GUI-G$^2$: Gaussian Reward Modeling for GUI Grounding</strong> · arXiv (Cornell University) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22GUI-G%24%5E2%24%3A+Gaussian+Reward+Modeling+for+GUI+Grounding%22)（未缓存未经核验的数字）
- GitHub Stars：**310**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2507.15846)

**基于 Abstract 的 TL;DR**

该研究引入了GUI-G$^2$奖励框架，利用Gaussian分布模拟人工点击行为，改善GUI grounding任务的性能。通过实验结果表明，GUI-G$^2$在ScreenSpot、ScreenSpot-v2和ScreenSpot-Probenchmark上显著优于现有方法，尤其是在ScreenSpot-Probenchmark上的改进率达24.7%。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2507.15846"><img src="https://ar5iv.labs.arxiv.org/html/2507.15846/assets/x4.png" alt="Figure 3: GUI Gaussian Grounding Rewards (GUI-G 2 ). Our framework transforms GUI grounding through continuous Gaussian modeling. Given a task instruction and screenshot, the policy model generates multiple predictions that are evaluated using our dual reward mechanism. Gaussian Point Rewards assess localization precision while Gaussian Coverage Rewards measure spatial overlap, together providing dense learning signals that guide policy optimization." width="720"></a>

> Figure 3: GUI Gaussian Grounding Rewards (GUI-G 2 ). Our framework transforms GUI grounding through continuous Gaussian modeling. Given a task instruction and screenshot, the policy model generates multiple predictions that are evaluated using our dual reward mechanism. Gaussian Point Rewards assess localization precision while Gaussian Coverage Rewards measure spatial overlap, together providing dense learning signals that guide policy optimization.
> 来源：[原论文](https://arxiv.org/abs/2507.15846)

</details>

<details>
<summary><strong>2. SpatialLadder: Progressive Training for Spatial Reasoning in Vision-Language Models</strong> · arXiv (Cornell University) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22SpatialLadder%3A+Progressive+Training+for+Spatial+Reasoning+in+Vision-Language+Models%22)（未缓存未经核验的数字）
- GitHub Stars：**99**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2510.08531)

**基于 Abstract 的 TL;DR**

研究表明，当前的视觉语言模型（VLM）难以实现稳健的空间推理能力。该研究提出了一种通过逐步建立感知和理解的层次结构来解决这一问题的方法。通过构建了一个包含26,610个样本的多模态数据集，并设计了一个三阶段的进步训练框架，该框架首先建立空间感知，接着发展空间理解，最终强化复杂推理。该方法得到了3B参数模型SpatialLadder的成功应用，实现了对空间推理benchmark的state-of-the-art表现，且在出域测试中保持了强大的 generalize能力。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2510.08531"><img src="https://ar5iv.labs.arxiv.org/html/2510.08531/assets/x4.png" alt="Figure 4: Impact of progressive training stages. Left: accuracy rewards over training steps; Middle: reward standard deviation over training steps; Right: VSI-Bench performance comparison." width="720"></a>

> Figure 4: Impact of progressive training stages. Left: accuracy rewards over training steps; Middle: reward standard deviation over training steps; Right: VSI-Bench performance comparison.
> 来源：[原论文](https://arxiv.org/abs/2510.08531)

</details>

<details>
<summary><strong>3. ViewSpatial-Bench: Evaluating Multi-perspective Spatial Localization in Vision-Language Models</strong> · arXiv (Cornell University) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22ViewSpatial-Bench%3A+Evaluating+Multi-perspective+Spatial+Localization+in+Vision-Language+Models%22)（未缓存未经核验的数字）
- GitHub Stars：**82**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2505.21500)

**基于 Abstract 的 TL;DR**

研究者发现现有视觉语言模型（VLM）在理解和推理视觉内容方面取得了显著成就，但在跨视角理解和空间推理方面仍存在挑战。他们开发了ViewSpatial-Bench，一个专门针对多视角空间定位识别评估的全面benchmark，并发现通过 fine-tuning VLMs 在多视角空间数据上，性能可以提高 46.24%。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2505.21500"><img src="https://ar5iv.labs.arxiv.org/html/2505.21500/assets/x2.png" alt="Figure 2: ViewSpatial-Bench construction pipeline. From data collection to QA generation across camera perspective ( ) and human perspective ( ) tasks. The pipeline includes metadata creation, automatic filtering, spatial relation extraction, and manual verification." width="720"></a>

> Figure 2: ViewSpatial-Bench construction pipeline. From data collection to QA generation across camera perspective ( ) and human perspective ( ) tasks. The pipeline includes metadata creation, automatic filtering, spatial relation extraction, and manual verification.
> 来源：[原论文](https://arxiv.org/abs/2505.21500)

</details>

</details>

<details>
<summary><img src="https://github.com/zju3dv.png?size=160" width="32" height="32" alt="ZJU 3D Vision Group logo"> &nbsp;<strong>ZJU 3D Vision Group</strong> · <code>verified</code></summary>

<br>

ZJU 3D Vision Group 隶属于 Zhejiang University，是一支主要关注三维视觉、计算机视觉、自动驾驶等方向的高校研究组。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** Zhejiang University
- **主要方向：** 三维视觉、计算机视觉、自动驾驶、具身智能
- **负责人：** [负责人/成员页](https://github.com/zju3dv) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [GitHub](https://github.com/zju3dv)

#### 最近工作 · 2024

<details>
<summary><strong>2. World-Grounded Human Motion Recovery via Gravity-View Coordinates</strong> · SIGGRAPH Asia 2024 Conference Papers · 2024</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22World-Grounded+Human+Motion+Recovery+via+Gravity-View+Coordinates%22)（未缓存未经核验的数字）
- GitHub Stars：**1800**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://doi.org/10.1145/3680528.3687565)

**基于 Abstract 的 TL;DR**

该研究提出了一个用于从单视图视频中恢复世界基准的人体运动的新方法。该方法使用一种名为Gravity-View（GV）的坐标系统，利用世界重力和相机视角来定义它。这导致了对学习图像姿势映射的错误积累的解决方案，并在实验中证明了其在摄像头空间和世界基准下的更真实运动恢复方面的优势。

</details>

#### 代表作

<details>
<summary><strong>1. 4K4D: Real-Time 4D View Synthesis at 4K Resolution</strong> · arXiv (Cornell University) · 2023</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%224K4D%3A+Real-Time+4D+View+Synthesis+at+4K+Resolution%22)（未缓存未经核验的数字）
- GitHub Stars：**1805**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2310.11448)

**基于 Abstract 的 TL;DR**

该研究旨在实现高分辨率和实时的动态3D场景视图合成。通过提出的4K4D点云表示，该方法可以有效提高渲染速度，并且能够实现高质量的渲染效果。实验结果表明，该方法在1080p分辨率下可达400FPS，在4K分辨率下可达80FPS，显著超越了之前的方法，并达到当前最佳的渲染质量。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2310.11448"><img src="https://ar5iv.labs.arxiv.org/html/2310.11448/assets/x2.png" alt="Figure 2 : Overview of our proposed pipeline. (a) By applying the space-carving algorithm [ 33 ] , we extract the initial cloud sequence 𝐱 , t 𝐱 𝑡 \mathbf{x},t of the target scene. A 4D feature grid [ 17 ] is predefined to assign a feature vector to each point, which is then fed into MLPs for the scene geometry and appearance. (b) The geometry model is based on the point location, radius, and density, which forms a semi-transparent point cloud. (c) The appearance model consists of a piece-wise constant IBR term 𝐜 i ​ b ​ r subscript 𝐜 𝑖 𝑏 𝑟 \mathbf{c}_{ibr} and a continuous SH model 𝐜 s ​ h subscript 𝐜 𝑠 ℎ \mathbf{c}_{sh} . (d) The proposed representation is learned from multi-view RGB video" width="720"></a>

> Figure 2 : Overview of our proposed pipeline. (a) By applying the space-carving algorithm [ 33 ] , we extract the initial cloud sequence 𝐱 , t 𝐱 𝑡 \mathbf{x},t of the target scene. A 4D feature grid [ 17 ] is predefined to assign a feature vector to each point, which is then fed into MLPs for the scene geometry and appearance. (b) The geometry model is based on the point location, radius, and density, which forms a semi-transparent point cloud. (c) The appearance model consists of a piece-wise constant IBR term 𝐜 i ​ b ​ r subscript 𝐜 𝑖 𝑏 𝑟 \mathbf{c}_{ibr} and a continuous SH model 𝐜 s ​ h subscript 𝐜 𝑠 ℎ \mathbf{c}_{sh} . (d) The proposed representation is learned from multi-view RGB video
> 来源：[原论文](https://arxiv.org/abs/2310.11448)

</details>

<details>
<summary><strong>2. World-Grounded Human Motion Recovery via Gravity-View Coordinates</strong> · SIGGRAPH Asia 2024 Conference Papers · 2024</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22World-Grounded+Human+Motion+Recovery+via+Gravity-View+Coordinates%22)（未缓存未经核验的数字）
- GitHub Stars：**1800**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://doi.org/10.1145/3680528.3687565)

**基于 Abstract 的 TL;DR**

该研究提出了一个用于从单视图视频中恢复世界基准的人体运动的新方法。该方法使用一种名为Gravity-View（GV）的坐标系统，利用世界重力和相机视角来定义它。这导致了对学习图像姿势映射的错误积累的解决方案，并在实验中证明了其在摄像头空间和世界基准下的更真实运动恢复方面的优势。

</details>

<details>
<summary><strong>3. Street Gaussians: Modeling Dynamic Urban Scenes with Gaussian Splatting</strong> · arXiv (Cornell University) · 2024</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Street+Gaussians%3A+Modeling+Dynamic+Urban+Scenes+with+Gaussian+Splatting%22)（未缓存未经核验的数字）
- GitHub Stars：**1373**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2401.01339)

**基于 Abstract 的 TL;DR**

该研究旨在解决自主驾驶场景中动态城市街头的模型化问题。 recent方法通过将跟踪车辆姿势 incorporation 运用NeRF，实现动态城市街头场景的 photo-realistic 视觉合成。但是，这些方法存在显著限制，即训练和渲染速度较慢。该论文提出Street Gaussians，一个新的隐式场景表示方法，解决这些限制。该方法将动态城市街头表示为一组点云，每个点云与语义标签和3D高斯分布相关联，分别对应于前景车辆或背景。该方法使用可调节跟踪姿势的对象点云，并结合4D球面谐波模型来模拟前景车辆的动态外观。这种隐式表示方法使得场景编辑和渲染在 135 FPS（1066×1600分辨率）内进行，仅在半小时的训练时间

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2401.01339"><img src="https://ar5iv.labs.arxiv.org/html/2401.01339/assets/x1.png" alt="Figure 1 : Rendering results on the Waymo dataset [ 44 ] . With only estimated trajectories, our method produces high-quality rendering at 133 FPS (1066 × \times 1600) within half an hour of training. Current SOTA method [ 55 ] requires accurate ground-truth trajectories, and has low training and rendering speed." width="720"></a>

> Figure 1 : Rendering results on the Waymo dataset [ 44 ] . With only estimated trajectories, our method produces high-quality rendering at 133 FPS (1066 × \times 1600) within half an hour of training. Current SOTA method [ 55 ] requires accurate ground-truth trajectories, and has low training and rendering speed.
> 来源：[原论文](https://arxiv.org/abs/2401.01339)

</details>

</details>

### Shanghai Jiao Tong University（4）

<details>
<summary><img src="https://github.com/MINT-SJTU.png?size=160" width="32" height="32" alt="SJTU Machine Intelligence and Interaction Lab (MINT) logo"> &nbsp;<strong>SJTU Machine Intelligence and Interaction Lab (MINT)</strong> · <code>verified</code></summary>

<br>

SJTU Machine Intelligence and Interaction Lab (MINT) 隶属于 Shanghai Jiao Tong University，是一支主要关注具身智能、机器人、多模态学习等方向的高校实验室。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** Shanghai Jiao Tong University
- **主要方向：** 具身智能、机器人、多模态学习、智能体
- **负责人：** [负责人/成员页](https://mint-sjtu.github.io/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://mint-sjtu.github.io/) · [GitHub](https://github.com/MINT-SJTU)

#### 最近工作 · 2025

<details>
<summary><strong>3. Evo-1: Lightweight Vision-Language-Action Model with Preserved Semantic Alignment</strong> · arXiv (Cornell University) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Evo-1%3A+Lightweight+Vision-Language-Action+Model+with+Preserved+Semantic+Alignment%22)（未缓存未经核验的数字）
- GitHub Stars：**342**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2511.04555)

**基于 Abstract 的 TL;DR**

该研究提出了一种轻量化的Vision-Language-Action（VLA）模型Evo-1，通过减少计算成本和提高部署效率，实现了强大的性能。Evo-1结合了多模态视觉语言模型和跨模态diffusion变换器，采用两阶段训练方法来优化表示。该模型在Meta-World和RoboTwin等suite上取得了state-of-the-art结果，并在实际应用中表现出高成功率和低内存占用。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2511.04555"><img src="https://ar5iv.labs.arxiv.org/html/2511.04555/assets/x1.png" alt="Figure 1 : Architecture of Evo-1. The input RGB observations and language instructions are first encoded by a compact vision-language backbone. Their fused representations are aligned with the robot state through an optimized integration module and then processed by a cross-modulated diffusion transformer to generate actions. The right side shows results across three simulation benchmarks." width="720"></a>

> Figure 1 : Architecture of Evo-1. The input RGB observations and language instructions are first encoded by a compact vision-language backbone. Their fused representations are aligned with the robot state through an optimized integration module and then processed by a cross-modulated diffusion transformer to generate actions. The right side shows results across three simulation benchmarks.
> 来源：[原论文](https://arxiv.org/abs/2511.04555)

</details>

#### 代表作

<details>
<summary><strong>1. We release Evo-RL, the opensource real-world offline RL on So-101 and AgileX PiPER for easier reproduction.</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**724**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/MINT-SJTU/Evo-RL)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：We release Evo-RL, the opensource real-world offline RL on So-101 and AgileX PiPER for easier reproduction. 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>2. RoboClaw is an Embodied AI Assistant.</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**519**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/MINT-SJTU/RoboClaw)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：RoboClaw is an Embodied AI Assistant. 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>3. Evo-1: Lightweight Vision-Language-Action Model with Preserved Semantic Alignment</strong> · arXiv (Cornell University) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Evo-1%3A+Lightweight+Vision-Language-Action+Model+with+Preserved+Semantic+Alignment%22)（未缓存未经核验的数字）
- GitHub Stars：**342**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2511.04555)

**基于 Abstract 的 TL;DR**

该研究提出了一种轻量化的Vision-Language-Action（VLA）模型Evo-1，通过减少计算成本和提高部署效率，实现了强大的性能。Evo-1结合了多模态视觉语言模型和跨模态diffusion变换器，采用两阶段训练方法来优化表示。该模型在Meta-World和RoboTwin等suite上取得了state-of-the-art结果，并在实际应用中表现出高成功率和低内存占用。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2511.04555"><img src="https://ar5iv.labs.arxiv.org/html/2511.04555/assets/x1.png" alt="Figure 1 : Architecture of Evo-1. The input RGB observations and language instructions are first encoded by a compact vision-language backbone. Their fused representations are aligned with the robot state through an optimized integration module and then processed by a cross-modulated diffusion transformer to generate actions. The right side shows results across three simulation benchmarks." width="720"></a>

> Figure 1 : Architecture of Evo-1. The input RGB observations and language instructions are first encoded by a compact vision-language backbone. Their fused representations are aligned with the robot state through an optimized integration module and then processed by a cross-modulated diffusion transformer to generate actions. The right side shows results across three simulation benchmarks.
> 来源：[原论文](https://arxiv.org/abs/2511.04555)

</details>

</details>

<details>
<summary><img src="https://github.com/GAIR-NLP.png?size=160" width="32" height="32" alt="SJTU Generative AI Research Lab (GAIR-NLP) logo"> &nbsp;<strong>SJTU Generative AI Research Lab (GAIR-NLP)</strong> · <code>verified</code></summary>

<br>

SJTU Generative AI Research Lab (GAIR-NLP) 隶属于 Shanghai Jiao Tong University，是一支主要关注大语言模型、智能体、AI 对齐等方向的高校实验室。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** Shanghai Jiao Tong University
- **主要方向：** 大语言模型、智能体、AI 对齐、AI for Science
- **负责人：** [负责人/成员页](https://github.com/GAIR-NLP) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [GitHub](https://github.com/GAIR-NLP)

#### 最近工作 · 2025

<details>
<summary><strong>1. LIMO: Less is More for Reasoning</strong> · arXiv (Cornell University) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22LIMO%3A+Less+is+More+for+Reasoning%22)（未缓存未经核验的数字）
- GitHub Stars：**1080**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2502.03387)

**基于 Abstract 的 TL;DR**

研究表明，复杂推理在大语言模型中不一定需要大量的训练数据。通过简单的监督 fine-tuning，LIMO模型可以获得63.3%的准确率和95.6%的准确率，并且在出于分布中的一般化方面表现出强大的能力。研究结果支持“Less-Is-More Reasoning Hypothesis”，即当基础模型中已有充分的知识编码时，通过少量但策略性的示例来引导推理可以获得复杂的推理。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2502.03387"><img src="https://ar5iv.labs.arxiv.org/html/2502.03387/assets/x1.png" alt="Figure 1: LIMO achieves substantial improvement over NuminaMath with fewer samples while excelling across diverse mathematical and multi-discipline benchmarks." width="720"></a>

> Figure 1: LIMO achieves substantial improvement over NuminaMath with fewer samples while excelling across diverse mathematical and multi-discipline benchmarks.
> 来源：[原论文](https://arxiv.org/abs/2502.03387)

</details>

#### 代表作

<details>
<summary><strong>1. LIMO: Less is More for Reasoning</strong> · arXiv (Cornell University) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22LIMO%3A+Less+is+More+for+Reasoning%22)（未缓存未经核验的数字）
- GitHub Stars：**1080**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2502.03387)

**基于 Abstract 的 TL;DR**

研究表明，复杂推理在大语言模型中不一定需要大量的训练数据。通过简单的监督 fine-tuning，LIMO模型可以获得63.3%的准确率和95.6%的准确率，并且在出于分布中的一般化方面表现出强大的能力。研究结果支持“Less-Is-More Reasoning Hypothesis”，即当基础模型中已有充分的知识编码时，通过少量但策略性的示例来引导推理可以获得复杂的推理。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2502.03387"><img src="https://ar5iv.labs.arxiv.org/html/2502.03387/assets/x1.png" alt="Figure 1: LIMO achieves substantial improvement over NuminaMath with fewer samples while excelling across diverse mathematical and multi-discipline benchmarks." width="720"></a>

> Figure 1: LIMO achieves substantial improvement over NuminaMath with fewer samples while excelling across diverse mathematical and multi-discipline benchmarks.
> 来源：[原论文](https://arxiv.org/abs/2502.03387)

</details>

<details>
<summary><strong>2. ANOLE: An Open, Autoregressive, Native Large Multimodal Models for Interleaved Image-Text Generation</strong> · arXiv (Cornell University) · 2024</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22ANOLE%3A+An+Open%2C+Autoregressive%2C+Native+Large+Multimodal+Models+for+Interleaved+Image-Text+Generation%22)（未缓存未经核验的数字）
- GitHub Stars：**842**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2407.06135)

**基于 Abstract 的 TL;DR**

研究问题是目前的开源大型多模态模型面临的问题，包括缺乏 native 整合、单模态生成和依赖于 separate diffuser 模型。该论文提出了 Anole，这是一种 open、autoregressive 的 native 大型多模态模型，可以进行交替图像-文本生成。通过采用 Meta AI 的 Chameleon 和创新 fine-tuning 策略，Anole 展示了高质量和一致的多模态生成能力，并且开源了模型、训练框架和 instruction tuning 数据。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2407.06135"><img src="https://ar5iv.labs.arxiv.org/html/2407.06135/assets/x1.png" alt="Figure 1: An example of Anole generating a high-quality and coherent interleaved image-text sequence on how to cook eggs." width="720"></a>

> Figure 1: An example of Anole generating a high-quality and coherent interleaved image-text sequence on how to cook eggs.
> 来源：[原论文](https://arxiv.org/abs/2407.06135)

</details>

<details>
<summary><strong>3. Programming Every Example: Lifting Pre-training Data Quality Like Experts at Scale</strong> · arXiv (Cornell University) · 2024</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Programming+Every+Example%3A+Lifting+Pre-training+Data+Quality+Like+Experts+at+Scale%22)（未缓存未经核验的数字）
- GitHub Stars：**272**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2409.17115)

**基于 Abstract 的 TL;DR**

研究表明，即使使用小型语言模型（0.3B参数），它们也可以通过“编程每个例子”（ProX）框架有效地改善数据质量，超过人类专家和其他选择方法。实验结果显示，预训练于ProX优化的数据下，模型的性能大幅提高。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2409.17115"><img src="https://ar5iv.labs.arxiv.org/html/2409.17115/assets/x3.png" alt="Figure 1: Training FLOPs v.s. average downstream performance. Although these corpora have gone through expert-crafted rules, applying ProX still yields significant improvements over these baseline models trained with original data corpus. Moreover, with much less training FLOPs, model trained on ProX curated data show comparable performance with existing models." width="720"></a>

> Figure 1: Training FLOPs v.s. average downstream performance. Although these corpora have gone through expert-crafted rules, applying ProX still yields significant improvements over these baseline models trained with original data corpus. Moreover, with much less training FLOPs, model trained on ProX curated data show comparable performance with existing models.
> 来源：[原论文](https://arxiv.org/abs/2409.17115)

</details>

</details>

<details>
<summary><img src="https://www.google.com/s2/favicons?domain_url=https%3A%2F%2Fmifa.sjtu.edu.cn&amp;sz=128" width="32" height="32" alt="SJTU Machine Intelligence Foundations and Applications Lab (MIFA) logo"> &nbsp;<strong>SJTU Machine Intelligence Foundations and Applications Lab (MIFA)</strong> · <code>verified</code></summary>

<br>

SJTU Machine Intelligence Foundations and Applications Lab (MIFA) 隶属于 Shanghai Jiao Tong University，是一支主要关注基础模型、持续学习、多模态学习等方向的高校实验室。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** Shanghai Jiao Tong University
- **主要方向：** 基础模型、持续学习、多模态学习、数据高效学习
- **负责人：** [负责人/成员页](https://mifa.sjtu.edu.cn/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://mifa.sjtu.edu.cn/)

#### 最近工作 · 日期待核验

<details>
<summary><strong>1. Shanghai Jiao Tong University</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://www.sjtu.edu.cn/)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：Shanghai Jiao Tong University 可通过原始链接查看完整项目、论文或数据说明。

</details>

#### 代表作

<details>
<summary><strong>1. Shanghai Jiao Tong University</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://www.sjtu.edu.cn/)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：Shanghai Jiao Tong University 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>2. School of Computer Science</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://www.cs.sjtu.edu.cn/jiaoshiml.html)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：School of Computer Science 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>3. When Noisy Labels Meet Long Tail Dilemmas</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://arxiv.org/pdf/2211.10955)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：When Noisy Labels Meet Long Tail Dilemmas 可通过原始链接查看完整项目、论文或数据说明。

</details>

</details>

<details>
<summary><img src="https://www.google.com/s2/favicons?domain_url=https%3A%2F%2Fgaoyue.sjtu.edu.cn&amp;sz=128" width="32" height="32" alt="SJTU Robot Learning and Representation Learning Lab (RL2) logo"> &nbsp;<strong>SJTU Robot Learning and Representation Learning Lab (RL2)</strong> · <code>verified</code></summary>

<br>

SJTU Robot Learning and Representation Learning Lab (RL2) 隶属于 Shanghai Jiao Tong University，是一支主要关注机器人学习、具身智能、视觉—语言—动作模型等方向的高校实验室。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** Shanghai Jiao Tong University
- **主要方向：** 机器人学习、具身智能、视觉—语言—动作模型、机器人导航
- **负责人：** [负责人/成员页](https://gaoyue.sjtu.edu.cn/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://gaoyue.sjtu.edu.cn/)

#### 最近工作 · 2024

<details>
<summary><strong>3. Constrained Dirichlet Distribution Policy: Guarantee Zero Constraint Violation Reinforcement Learning for Continuous Robotic Control</strong> · IEEE Robotics and Automation Letters · 2024</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Constrained+Dirichlet+Distribution+Policy%3A+Guarantee+Zero+Constraint+Violation+Reinforcement+Learning+for+Continuous+Robotic+Control%22)（未缓存未经核验的数字）
- [论文 / 项目原始入口](https://doi.org/10.1109/lra.2024.3490392)

**基于 Abstract 的 TL;DR**

该研究提出了一种新的动作约束强化学习方法，通过将动作空间转换为其对应的双空间，并使用Dirichlet分布策略来保证严格约束满足，同时进行随机探索。实验结果表明该方法在benchmark环境和实际四肢行走任务中表现出更高的奖励和更快的推导速度，证明了该方法的有效性和潜在应用价值。

</details>

#### 代表作

<details>
<summary><strong>1. Active Exploration and Online Perception of Terrain Physics with Legged Robots</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://gaoyue.sjtu.edu.cn/paperlist/AEOP.html)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：Active Exploration and Online Perception of Terrain Physics with Legged Robots 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>2. Contrastive Forward Prediction Reinforcement Learning for Adaptive Fault-Tolerant Legged Robots</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://proceedings.mlr.press/v305/fu25b.html)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：Contrastive Forward Prediction Reinforcement Learning for Adaptive Fault-Tolerant Legged Robots 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>3. Constrained Dirichlet Distribution Policy: Guarantee Zero Constraint Violation Reinforcement Learning for Continuous Robotic Control</strong> · IEEE Robotics and Automation Letters · 2024</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Constrained+Dirichlet+Distribution+Policy%3A+Guarantee+Zero+Constraint+Violation+Reinforcement+Learning+for+Continuous+Robotic+Control%22)（未缓存未经核验的数字）
- [论文 / 项目原始入口](https://doi.org/10.1109/lra.2024.3490392)

**基于 Abstract 的 TL;DR**

该研究提出了一种新的动作约束强化学习方法，通过将动作空间转换为其对应的双空间，并使用Dirichlet分布策略来保证严格约束满足，同时进行随机探索。实验结果表明该方法在benchmark环境和实际四肢行走任务中表现出更高的奖励和更快的推导速度，证明了该方法的有效性和潜在应用价值。

</details>

</details>

### Fudan University（3）

<details>
<summary><img src="https://github.com/FudanNLP.png?size=160" width="32" height="32" alt="Fudan NLP Group logo"> &nbsp;<strong>Fudan NLP Group</strong> · <code>verified</code></summary>

<br>

Fudan NLP Group 隶属于 Fudan University，是一支主要关注自然语言处理、大语言模型、信息抽取的高校研究组。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** Fudan University
- **主要方向：** 自然语言处理、大语言模型、信息抽取
- **负责人：** [负责人/成员页](https://github.com/FudanNLP) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [GitHub](https://github.com/FudanNLP)

#### 最近工作 · 2026-05-27

<details>
<summary><strong>3. .github</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**1**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/FudanNLP/.github)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：.github 可通过原始链接查看完整项目、论文或数据说明。

</details>

#### 代表作

<details>
<summary><strong>1. fitlog是一款在深度学习训练中用于辅助用户记录日志和管理代码的工具</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**1512**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/FudanNLP/fitlog)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：fitlog是一款在深度学习训练中用于辅助用户记录日志和管理代码的工具 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>2. 复旦大学《模式识别与机器学习》课程仓库</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**33**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/FudanNLP/FDU-PRML-2025Fall)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：复旦大学《模式识别与机器学习》课程仓库 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>3. .github</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**1**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/FudanNLP/.github)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：.github 可通过原始链接查看完整项目、论文或数据说明。

</details>

</details>

<details>
<summary><img src="https://github.com/FudanDISC.png?size=160" width="32" height="32" alt="Fudan Data Intelligence and Social Computing Lab (DISC) logo"> &nbsp;<strong>Fudan Data Intelligence and Social Computing Lab (DISC)</strong> · <code>verified</code></summary>

<br>

Fudan Data Intelligence and Social Computing Lab (DISC) 隶属于 Fudan University，是一支主要关注大语言模型、数据挖掘、社会计算等方向的高校实验室。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** Fudan University
- **主要方向：** 大语言模型、数据挖掘、社会计算、智能体
- **负责人：** [负责人/成员页](https://github.com/FudanDISC) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [GitHub](https://github.com/FudanDISC)

#### 最近工作 · 2023

<details>
<summary><strong>3. DISC-LawLLM: Fine-tuning Large Language Models for Intelligent Legal Services</strong> · arXiv (Cornell University) · 2023</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22DISC-LawLLM%3A+Fine-tuning+Large+Language+Models+for+Intelligent+Legal+Services%22)（未缓存未经核验的数字）
- GitHub Stars：**945**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2309.11325)

**基于 Abstract 的 TL;DR**

该研究提出了一个利用大型语言模型（LLM）构建智能法律系统的方法，称为DISC-LawLLM。通过采用法律逻辑提示策略和增强模型的检索模块，研究人员成功地 fine-tuned LLMs 以实现法律推理能力，并在多种法律场景中获得了良好的效果。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2309.11325"><img src="https://ar5iv.labs.arxiv.org/html/2309.11325/assets/x1.png" alt="Figure 1: Overview of DISC-LawLLM serving different users in different legal scenarios. For an example of legal consultation, DISC-LawLLM utilizes the retrieved statutes to perform legal reasoning (i.e., the statute is the major premise, the fact in the question is the minor premise, and the final inference is the conclusion)." width="720"></a>

> Figure 1: Overview of DISC-LawLLM serving different users in different legal scenarios. For an example of legal consultation, DISC-LawLLM utilizes the retrieved statutes to perform legal reasoning (i.e., the statute is the major premise, the fact in the question is the minor premise, and the final inference is the conclusion).
> 来源：[原论文](https://arxiv.org/abs/2309.11325)

</details>

#### 代表作

<details>
<summary><strong>1. [ACL 2026] An interactive and comprehensive legal agent benchmark</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**14**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/FudanDISC/J1Bench)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：[ACL 2026] An interactive and comprehensive legal agent benchmark 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>2. [NAACL 2025] Multi-Agent Legal Simulation Driver (MASER), a synthetic data engine for dynamic legal scenarios.</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**8**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/FudanDISC/MASER)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：[NAACL 2025] Multi-Agent Legal Simulation Driver (MASER), a synthetic data engine for dynamic legal scenarios. 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>3. DISC-LawLLM: Fine-tuning Large Language Models for Intelligent Legal Services</strong> · arXiv (Cornell University) · 2023</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22DISC-LawLLM%3A+Fine-tuning+Large+Language+Models+for+Intelligent+Legal+Services%22)（未缓存未经核验的数字）
- GitHub Stars：**945**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2309.11325)

**基于 Abstract 的 TL;DR**

该研究提出了一个利用大型语言模型（LLM）构建智能法律系统的方法，称为DISC-LawLLM。通过采用法律逻辑提示策略和增强模型的检索模块，研究人员成功地 fine-tuned LLMs 以实现法律推理能力，并在多种法律场景中获得了良好的效果。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2309.11325"><img src="https://ar5iv.labs.arxiv.org/html/2309.11325/assets/x1.png" alt="Figure 1: Overview of DISC-LawLLM serving different users in different legal scenarios. For an example of legal consultation, DISC-LawLLM utilizes the retrieved statutes to perform legal reasoning (i.e., the statute is the major premise, the fact in the question is the minor premise, and the final inference is the conclusion)." width="720"></a>

> Figure 1: Overview of DISC-LawLLM serving different users in different legal scenarios. For an example of legal consultation, DISC-LawLLM utilizes the retrieved statutes to perform legal reasoning (i.e., the statute is the major premise, the fact in the question is the minor premise, and the final inference is the conclusion).
> 来源：[原论文](https://arxiv.org/abs/2309.11325)

</details>

</details>

<details>
<summary><img src="https://www.google.com/s2/favicons?domain_url=https%3A%2F%2Fdil.fudan.edu.cn&amp;sz=128" width="32" height="32" alt="Fudan Data Intelligence Lab logo"> &nbsp;<strong>Fudan Data Intelligence Lab</strong> · <code>verified</code></summary>

<br>

Fudan Data Intelligence Lab 隶属于 Fudan University，是一支主要关注机器学习、基础模型、可信 AI等方向的高校实验室。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** Fudan University
- **主要方向：** 机器学习、基础模型、可信 AI、计算机视觉
- **负责人：** [负责人/成员页](https://dil.fudan.edu.cn/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://dil.fudan.edu.cn/)

#### 最近工作 · 2024

<details>
<summary><strong>3. FedASMU: Efficient Asynchronous Federated Learning with Dynamic Staleness-Aware Model Update</strong> · Proceedings of the AAAI Conference on Artificial Intelligence · 2024</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22FedASMU%3A+Efficient+Asynchronous+Federated+Learning+with+Dynamic+Staleness-Aware+Model+Update%22)（未缓存未经核验的数字）
- [论文 / 项目原始入口](https://doi.org/10.1609/aaai.v38i12.29297)

**基于 Abstract 的 TL;DR**

该研究提出了一个异步 staleness-aware 的模型更新的 Federated Learning 框架，FedASMU。它解决了数据非独立性和设备系统不一致性的问题，通过动态模型聚合和适应式局部模型调整方法来提高准确率和效率。实验结果表明，FedASMU在准确率和效率方面都有显著的优势。

</details>

#### 代表作

<details>
<summary><strong>1. 多模态大模型 CVPR 2025 | Reasoning to Attend: Try to Understand How Token Works</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://dil.fudan.edu.cn/_upload/tpl/14/d5/5333/template5333/pub/2404.pdf)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：多模态大模型 CVPR 2025 | Reasoning to Attend: Try to Understand How Token Works 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>2. 大模型安全与对抗学习 ICML 2025 | Flexible, Efficient, and Stable Adversarial Attacks on Machine Unlearning</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://dil.fudan.edu.cn/_upload/tpl/14/d5/5333/template5333/pub/2501.pdf)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：大模型安全与对抗学习 ICML 2025 | Flexible, Efficient, and Stable Adversarial Attacks on Machine Unlearning 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>3. FedASMU: Efficient Asynchronous Federated Learning with Dynamic Staleness-Aware Model Update</strong> · Proceedings of the AAAI Conference on Artificial Intelligence · 2024</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22FedASMU%3A+Efficient+Asynchronous+Federated+Learning+with+Dynamic+Staleness-Aware+Model+Update%22)（未缓存未经核验的数字）
- [论文 / 项目原始入口](https://doi.org/10.1609/aaai.v38i12.29297)

**基于 Abstract 的 TL;DR**

该研究提出了一个异步 staleness-aware 的模型更新的 Federated Learning 框架，FedASMU。它解决了数据非独立性和设备系统不一致性的问题，通过动态模型聚合和适应式局部模型调整方法来提高准确率和效率。实验结果表明，FedASMU在准确率和效率方面都有显著的优势。

</details>

</details>

### University of Science and Technology of China（4）

<details>
<summary><img src="https://www.google.com/s2/favicons?domain_url=https%3A%2F%2Fvim.ustc.edu.cn&amp;sz=128" width="32" height="32" alt="USTC Vision and Multimedia Research Group (VIM) logo"> &nbsp;<strong>USTC Vision and Multimedia Research Group (VIM)</strong> · <code>verified</code></summary>

<br>

USTC Vision and Multimedia Research Group (VIM) 隶属于 University of Science and Technology of China，是一支主要关注计算机视觉、多模态学习、深度学习等方向的高校研究组。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** University of Science and Technology of China
- **主要方向：** 计算机视觉、多模态学习、深度学习、AI 系统
- **负责人：** [负责人/成员页](https://vim.ustc.edu.cn/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://vim.ustc.edu.cn/)

#### 最近工作 · 日期待核验

<details>
<summary><strong>1. Website Production：Provided by Weilai Technology</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](http://www.ahweilai.com/)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：Website Production：Provided by Weilai Technology 可通过原始链接查看完整项目、论文或数据说明。

</details>

#### 代表作

<details>
<summary><strong>1. Website Production：Provided by Weilai Technology</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](http://www.ahweilai.com/)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：Website Production：Provided by Weilai Technology 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>2. DOI: 10.3969/j.issn.1000-3428.2012.04.029</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://www.ecice06.com/CN/article/downloadArticleFile.do?attachType=PDF&id=22702)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：DOI: 10.3969/j.issn.1000-3428.2012.04.029 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>3. DOI: 10.11834/jig.20091114</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](http://www.cjig.cn/jig/ch/reader/view_abstract.aspx?file_no=20091114&flag=1)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：DOI: 10.11834/jig.20091114 可通过原始链接查看完整项目、论文或数据说明。

</details>

</details>

<details>
<summary><img src="https://github.com/ustc-ivclab.png?size=160" width="32" height="32" alt="USTC Intelligent Visual Data Coding Lab (iVC) logo"> &nbsp;<strong>USTC Intelligent Visual Data Coding Lab (iVC)</strong> · <code>verified</code></summary>

<br>

USTC Intelligent Visual Data Coding Lab (iVC) 隶属于 University of Science and Technology of China，是一支主要关注计算机视觉、视觉压缩、多模态学习等方向的高校实验室。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** University of Science and Technology of China
- **主要方向：** 计算机视觉、视觉压缩、多模态学习、高效 AI
- **负责人：** [负责人/成员页](https://ustc-ivclab.github.io/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://ustc-ivclab.github.io/) · [GitHub](https://github.com/ustc-ivclab)

#### 最近工作 · 日期待核验

<details>
<summary><strong>1. Research track · Computer Vision</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://ustc-ivclab.github.io/)

**摘要 / 项目说明**

这是团队的官方研究入口，可继续访问其研究方向、项目或论文列表；该条目不是单篇论文，因此不展示论文引用量。

</details>

#### 代表作

<details>
<summary><strong>1. Research track · Computer Vision</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://ustc-ivclab.github.io/)

**摘要 / 项目说明**

这是团队的官方研究入口，可继续访问其研究方向、项目或论文列表；该条目不是单篇论文，因此不展示论文引用量。

</details>

<details>
<summary><strong>2. Research track · Visual Compression</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://github.com/ustc-ivclab)

**摘要 / 项目说明**

这是团队的官方研究入口，可继续访问其研究方向、项目或论文列表；该条目不是单篇论文，因此不展示论文引用量。

</details>

<details>
<summary><strong>3. Research track · Multimodal</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://ustc-ivclab.github.io/)

**摘要 / 项目说明**

这是团队的官方研究入口，可继续访问其研究方向、项目或论文列表；该条目不是单篇论文，因此不展示论文引用量。

</details>

</details>

<details>
<summary><img src="https://www.google.com/s2/favicons?domain_url=https%3A%2F%2Falphalab-ustc.github.io&amp;sz=128" width="32" height="32" alt="AlphaLab @ USTC logo"> &nbsp;<strong>AlphaLab @ USTC</strong> · <code>verified</code></summary>

<br>

AlphaLab @ USTC 隶属于 University of Science and Technology of China，是一支主要关注大语言模型、多模态学习、推荐系统等方向的高校实验室。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** University of Science and Technology of China
- **主要方向：** 大语言模型、多模态学习、推荐系统、可信 AI
- **负责人：** [负责人/成员页](https://alphalab-ustc.github.io/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://alphalab-ustc.github.io/)

#### 最近工作 · 日期待核验

<details>
<summary><strong>1. MemOCR: Layout-Aware Visual Memory for Efficient Long-Horizon Reasoning</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://alphalab-ustc.github.io/publications.html)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：MemOCR: Layout-Aware Visual Memory for Efficient Long-Horizon Reasoning 可通过原始链接查看完整项目、论文或数据说明。

</details>

#### 代表作

<details>
<summary><strong>1. MemOCR: Layout-Aware Visual Memory for Efficient Long-Horizon Reasoning</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://alphalab-ustc.github.io/publications.html)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：MemOCR: Layout-Aware Visual Memory for Efficient Long-Horizon Reasoning 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>2. Tiny Brains, Giant Impact: Uncovering the Keystone Neurons of LLM with Just a Few Prompts</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://alphalab-ustc.github.io/publications.html)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：Tiny Brains, Giant Impact: Uncovering the Keystone Neurons of LLM with Just a Few Prompts 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>3. When to Memorize and When to Stop: Gated Recurrent Memory for Long-Context Reasoning</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://alphalab-ustc.github.io/publications.html)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：When to Memorize and When to Stop: Gated Recurrent Memory for Long-Context Reasoning 可通过原始链接查看完整项目、论文或数据说明。

</details>

</details>

<details>
<summary><img src="https://www.google.com/s2/favicons?domain_url=https%3A%2F%2Fustc-milab.work&amp;sz=128" width="32" height="32" alt="USTC Multimodal Embodied Intelligence Lab (MEI) logo"> &nbsp;<strong>USTC Multimodal Embodied Intelligence Lab (MEI)</strong> · <code>verified</code></summary>

<br>

USTC Multimodal Embodied Intelligence Lab (MEI) 隶属于 University of Science and Technology of China，是一支主要关注多模态学习、具身智能、生成式 AI等方向的高校实验室。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** University of Science and Technology of China
- **主要方向：** 多模态学习、具身智能、生成式 AI、信息检索
- **负责人：** [负责人/成员页](https://ustc-milab.work/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://ustc-milab.work/)

#### 最近工作 · 2025

<details>
<summary><strong>1. Bayesian Window Transformer for Image Restoration</strong> · IEEE Transactions on Pattern Analysis and Machine Intelligence · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Bayesian+Window+Transformer+for+Image+Restoration%22)（未缓存未经核验的数字）
- [论文 / 项目原始入口](https://doi.org/10.1109/tpami.2025.3626947)

**基于 Abstract 的 TL;DR**

研究者提出了一个新的Bayesian Window Transformer，通过引入概率分布来实现窗口的动态调整，从而克服传统Transformer的局限性。该方法不仅保留了Transformer强大的表达能力，还维护了翻译变异性和局部关系的重要性。实验结果显示，该方法在多种图像恢复任务中表现出突出的效果。

</details>

#### 代表作

<details>
<summary><strong>1. Bayesian Window Transformer for Image Restoration</strong> · IEEE Transactions on Pattern Analysis and Machine Intelligence · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Bayesian+Window+Transformer+for+Image+Restoration%22)（未缓存未经核验的数字）
- [论文 / 项目原始入口](https://doi.org/10.1109/tpami.2025.3626947)

**基于 Abstract 的 TL;DR**

研究者提出了一个新的Bayesian Window Transformer，通过引入概率分布来实现窗口的动态调整，从而克服传统Transformer的局限性。该方法不仅保留了Transformer强大的表达能力，还维护了翻译变异性和局部关系的重要性。实验结果显示，该方法在多种图像恢复任务中表现出突出的效果。

</details>

<details>
<summary><strong>2. Mamba-Driven Comprehensive Context Learning for Zero-Shot HOI Detection</strong> · International Journal of Computer Vision · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Mamba-Driven+Comprehensive+Context+Learning+for+Zero-Shot+HOI+Detection%22)（未缓存未经核验的数字）
- [论文 / 项目原始入口](https://doi.org/10.1007/s11263-025-02616-y)

**摘要 / 项目说明**

已匹配论文《Mamba-Driven Comprehensive Context Learning for Zero-Shot HOI Detection》，但开放元数据暂未提供 Abstract；请通过论文原文查看方法与结论。

</details>

<details>
<summary><strong>3. AR-Diffusion: Asynchronous Video Generation with Auto-Regressive Diffusion</strong> · 2025 IEEE/CVF Conference on Computer Vision and Pattern Recognition (CVPR) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22AR-Diffusion%3A+Asynchronous+Video+Generation+with+Auto-Regressive+Diffusion%22)（未缓存未经核验的数字）
- [论文 / 项目原始入口](https://doi.org/10.1109/cvpr52734.2025.00690)

**基于 Abstract 的 TL;DR**

该研究探讨了视频生成任务，旨在合并异步自动回归模型和 diffusión 模型的优势。他们提出了 Auto-Regressive 扩散（AR-扩散）模型，该模型通过逐渐污染视频帧来解决异步生成中的不一致性问题。该模型结合了非递减约束和时间序列注意力，实现了可变长度视频的生成，同时保留时间连贯性。实验结果表明该方法在四个挑战性基准上取得了竞争性和领先性的成果。

</details>

</details>

### Nanjing University（2）

<details>
<summary><img src="https://github.com/lamda-nju.png?size=160" width="32" height="32" alt="NJU Learning and Mining from Data Group (LAMDA) logo"> &nbsp;<strong>NJU Learning and Mining from Data Group (LAMDA)</strong> · <code>verified</code></summary>

<br>

NJU Learning and Mining from Data Group (LAMDA) 隶属于 Nanjing University，是一支主要关注机器学习、数据挖掘、进化计算等方向的高校实验室。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** Nanjing University
- **主要方向：** 机器学习、数据挖掘、进化计算、计算机视觉
- **负责人：** [Zhi-Hua Zhou](https://cs.nju.edu.cn/zhouzh/)（Head of LAMDA）
- **官方入口：** [官网](https://www.lamda.nju.edu.cn/) · [GitHub](https://github.com/lamda-nju)

#### 最近工作 · 2026-05-18

<details>
<summary><strong>1. An Efficient, Scalable and Optimized Python Framework for Deep Forest (2021.2.1)</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**962**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/LAMDA-NJU/Deep-Forest)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：An Efficient, Scalable and Optimized Python Framework for Deep Forest (2021.2.1) 可通过原始链接查看完整项目、论文或数据说明。

</details>

#### 代表作

<details>
<summary><strong>1. An Efficient, Scalable and Optimized Python Framework for Deep Forest (2021.2.1)</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**962**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/LAMDA-NJU/Deep-Forest)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：An Efficient, Scalable and Optimized Python Framework for Deep Forest (2021.2.1) 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>2. Research track · Machine Learning</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://www.lamda.nju.edu.cn/)

**摘要 / 项目说明**

这是团队的官方研究入口，可继续访问其研究方向、项目或论文列表；该条目不是单篇论文，因此不展示论文引用量。

</details>

<details>
<summary><strong>3. Research track · Data Mining</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://github.com/lamda-nju)

**摘要 / 项目说明**

这是团队的官方研究入口，可继续访问其研究方向、项目或论文列表；该条目不是单篇论文，因此不展示论文引用量。

</details>

</details>

<details>
<summary><img src="https://github.com/LAMDA-CL.png?size=160" width="32" height="32" alt="LAMDA Continual Learning Lab logo"> &nbsp;<strong>LAMDA Continual Learning Lab</strong> · <code>verified</code></summary>

<br>

LAMDA Continual Learning Lab 隶属于 Nanjing University，是一支主要关注持续学习、终身学习、视觉语言模型的高校研究组。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** Nanjing University
- **主要方向：** 持续学习、终身学习、视觉语言模型
- **负责人：** [负责人/成员页](https://github.com/LAMDA-CL) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [GitHub](https://github.com/LAMDA-CL)

#### 最近工作 · 2025

<details>
<summary><strong>3. External Knowledge Injection for CLIP-Based Class-Incremental Learning</strong> · 2025 IEEE/CVF International Conference on Computer Vision (ICCV) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22External+Knowledge+Injection+for+CLIP-Based+Class-Incremental+Learning%22)（未缓存未经核验的数字）
- GitHub Stars：**59**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://doi.org/10.1109/iccv51701.2025.00317)

**基于 Abstract 的 TL;DR**

该研究提出了一种称为ExterNal knowledGe INjEction（ENGINE）的方法，用于改进Class-Incremental Learning（CIL）中的预训练模型。该方法通过在预训练模型中注入外部知识，特别是从视觉和语言两个模态中获得的信息，从而提高了模型对新数据的适应能力。

</details>

#### 代表作

<details>
<summary><strong>1. Class-Incremental Learning: A Survey</strong> · arXiv (Cornell University) · 2023</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Class-Incremental+Learning%3A+A+Survey%22)（未缓存未经核验的数字）
- GitHub Stars：**285**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2302.03648)

**基于 Abstract 的 TL;DR**

研究了Class-Incremental Learning（CIL）方法，发现直接训练新类别时，模型容易遭受“忘记旧类”问题。该论文对17个CIL方法进行了全面比较，并提出了使用memory budget和多种性能指标的评估方法，以确保公平的比较结果。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2302.03648"><img src="https://ar5iv.labs.arxiv.org/html/2302.03648/assets/x2.png" alt="Figure 2: The setting of Class-Incremental Learning (CIL), Task-Incremental Learning (TIL), and Domain-Incremental Learning (DIL). CIL and TIL share the same training protocol, while TIL is much easier during inference, i.e. , only requiring classifying among corresponding label spaces. DIL refers to the data stream with distribution change, where new tasks contain the same classes from different domains, e.g. , cartoon and clip-art." width="720"></a>

> Figure 2: The setting of Class-Incremental Learning (CIL), Task-Incremental Learning (TIL), and Domain-Incremental Learning (DIL). CIL and TIL share the same training protocol, while TIL is much easier during inference, i.e. , only requiring classifying among corresponding label spaces. DIL refers to the data stream with distribution change, where new tasks contain the same classes from different domains, e.g. , cartoon and clip-art.
> 来源：[原论文](https://arxiv.org/abs/2302.03648)

</details>

<details>
<summary><strong>2. Learning without Forgetting for Vision-Language Models</strong> · arXiv (Cornell University) · 2023</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Learning+without+Forgetting+for+Vision-Language+Models%22)（未缓存未经核验的数字）
- GitHub Stars：**65**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2305.19270)

**基于 Abstract 的 TL;DR**

研究者提出了PROjectiOn Fusion（PROOF）方法，旨在解决视觉语言模型（VLM）在类别递增学习中的两大挑战：如何适应新任务而不遗忘旧知识和如何充分利用多模态信息。通过训练task-specific的投影和融合模块，PROOF能够有效地学习并记忆旧知识，同时捕捉到更强大的表示能力。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2305.19270"><img src="https://ar5iv.labs.arxiv.org/html/2305.19270/assets/x8.png" alt="Figure 4: The training protocol of five incremental stages in Flickr30K. We split training instances into five tasks, i.e. , walk, stand, run, ride, and play. The training/testing sets do not include images that do not fall into these tasks. We use the pre-trained BEiT-3 as the initialization and sequentially learn cross-modal retrieval tasks. At the end of each task, the model is evaluated on all previously learned concepts." width="720"></a>

> Figure 4: The training protocol of five incremental stages in Flickr30K. We split training instances into five tasks, i.e. , walk, stand, run, ride, and play. The training/testing sets do not include images that do not fall into these tasks. We use the pre-trained BEiT-3 as the initialization and sequentially learn cross-modal retrieval tasks. At the end of each task, the model is evaluated on all previously learned concepts.
> 来源：[原论文](https://arxiv.org/abs/2305.19270)

</details>

<details>
<summary><strong>3. External Knowledge Injection for CLIP-Based Class-Incremental Learning</strong> · 2025 IEEE/CVF International Conference on Computer Vision (ICCV) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22External+Knowledge+Injection+for+CLIP-Based+Class-Incremental+Learning%22)（未缓存未经核验的数字）
- GitHub Stars：**59**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://doi.org/10.1109/iccv51701.2025.00317)

**基于 Abstract 的 TL;DR**

该研究提出了一种称为ExterNal knowledGe INjEction（ENGINE）的方法，用于改进Class-Incremental Learning（CIL）中的预训练模型。该方法通过在预训练模型中注入外部知识，特别是从视觉和语言两个模态中获得的信息，从而提高了模型对新数据的适应能力。

</details>

</details>

### Harbin Institute of Technology（2）

<details>
<summary><img src="https://github.com/HIT-SCIR.png?size=160" width="32" height="32" alt="HIT Research Center for Social Computing and Information Retrieval (SCIR) logo"> &nbsp;<strong>HIT Research Center for Social Computing and Information Retrieval (SCIR)</strong> · <code>verified</code></summary>

<br>

HIT Research Center for Social Computing and Information Retrieval (SCIR) 隶属于 Harbin Institute of Technology，是一支主要关注自然语言处理、信息检索、知识图谱等方向的高校研究中心。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** Harbin Institute of Technology
- **主要方向：** 自然语言处理、信息检索、知识图谱、社会计算
- **负责人：** [负责人/成员页](https://ir.hit.edu.cn/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://ir.hit.edu.cn/) · [GitHub](https://github.com/HIT-SCIR)

#### 最近工作 · 2026-03-11

<details>
<summary><strong>1. Language Technology Platform</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**5260**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/HIT-SCIR/ltp)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：Language Technology Platform 可通过原始链接查看完整项目、论文或数据说明。

</details>

#### 代表作

<details>
<summary><strong>1. Language Technology Platform</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**5260**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/HIT-SCIR/ltp)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：Language Technology Platform 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>2. 中文Mixtral-8x7B（Chinese-Mixtral-8x7B）</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**651**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/HIT-SCIR/Chinese-Mixtral-8x7B)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：中文Mixtral-8x7B（Chinese-Mixtral-8x7B） 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>3. plm-nlp-code</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**655**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/HIT-SCIR/plm-nlp-code)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：plm-nlp-code 可通过原始链接查看完整项目、论文或数据说明。

</details>

</details>

<details>
<summary><img src="https://www.google.com/s2/favicons?domain_url=http%3A%2F%2Frobot.hit.edu.cn&amp;sz=128" width="32" height="32" alt="HIT State Key Laboratory of Robotics and Systems logo"> &nbsp;<strong>HIT State Key Laboratory of Robotics and Systems</strong> · <code>provisional</code></summary>

<br>

HIT State Key Laboratory of Robotics and Systems 隶属于 Harbin Institute of Technology，是一支主要关注机器人、具身智能、控制理论等方向的高校实验室。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** Harbin Institute of Technology
- **主要方向：** 机器人、具身智能、控制理论、智能系统
- **负责人：** [负责人/成员页](http://robot.hit.edu.cn/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](http://robot.hit.edu.cn/)

#### 最近工作 · 日期待核验

<details>
<summary><strong>1. Research track · Robotics</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](http://robot.hit.edu.cn/)

**摘要 / 项目说明**

这是团队的官方研究入口，可继续访问其研究方向、项目或论文列表；该条目不是单篇论文，因此不展示论文引用量。

</details>

#### 代表作

<details>
<summary><strong>1. Research track · Robotics</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](http://robot.hit.edu.cn/)

**摘要 / 项目说明**

这是团队的官方研究入口，可继续访问其研究方向、项目或论文列表；该条目不是单篇论文，因此不展示论文引用量。

</details>

<details>
<summary><strong>2. Research track · Embodied Ai</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://en.hit.edu.cn/11961/list.htm)

**摘要 / 项目说明**

这是团队的官方研究入口，可继续访问其研究方向、项目或论文列表；该条目不是单篇论文，因此不展示论文引用量。

</details>

<details>
<summary><strong>3. Research track · Control</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](http://robot.hit.edu.cn/)

**摘要 / 项目说明**

这是团队的官方研究入口，可继续访问其研究方向、项目或论文列表；该条目不是单篇论文，因此不展示论文引用量。

</details>

</details>

### Xi'an Jiaotong University（2）

<details>
<summary><img src="https://www.google.com/s2/favicons?domain_url=https%3A%2F%2Fgr.xjtu.edu.cn&amp;sz=128" width="32" height="32" alt="Xi&#39;an Jiaotong University AI Security Lab (AI-SEC) logo"> &nbsp;<strong>Xi&#39;an Jiaotong University AI Security Lab (AI-SEC)</strong> · <code>provisional</code></summary>

<br>

Xi'an Jiaotong University AI Security Lab (AI-SEC) 隶属于 Xi'an Jiaotong University，是一支主要关注可信 AI、AI 安全与对齐、多模态学习等方向的高校实验室。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** Xi'an Jiaotong University
- **主要方向：** 可信 AI、AI 安全与对齐、多模态学习、高效 AI
- **负责人：** [负责人/成员页](https://gr.xjtu.edu.cn/en/web/cshen) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://gr.xjtu.edu.cn/en/web/cshen)

#### 最近工作 · 日期待核验

<details>
<summary><strong>1. Selected Publications</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://gr.xjtu.edu.cn/cshen/zh_CN/zdylm/1000952/list/index.htm)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：Selected Publications 可通过原始链接查看完整项目、论文或数据说明。

</details>

#### 代表作

<details>
<summary><strong>1. Selected Publications</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://gr.xjtu.edu.cn/cshen/zh_CN/zdylm/1000952/list/index.htm)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：Selected Publications 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>2. Xiaohong Guan (管晓宏)</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](http://www.xjtu.edu.cn/info/1728/1960199.htm)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：Xiaohong Guan (管晓宏) 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>3. Typographic-attack-for-LVLM</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://arxiv.org/abs/2402.19150)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：Typographic-attack-for-LVLM 可通过原始链接查看完整项目、论文或数据说明。

</details>

</details>

<details>
<summary><img src="https://www.google.com/s2/favicons?domain_url=https%3A%2F%2Fen.xjtu.edu.cn&amp;sz=128" width="32" height="32" alt="Xi&#39;an Jiaotong University Robotics Research Institute logo"> &nbsp;<strong>Xi&#39;an Jiaotong University Robotics Research Institute</strong> · <code>provisional</code></summary>

<br>

Xi'an Jiaotong University Robotics Research Institute 隶属于 Xi'an Jiaotong University，是一支主要关注机器人、具身智能、机器感知等方向的高校研究院。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** Xi'an Jiaotong University
- **主要方向：** 机器人、具身智能、机器感知、控制理论
- **负责人：** [负责人/成员页](https://en.xjtu.edu.cn/2025-08/22/c_1118744.htm) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://en.xjtu.edu.cn/2025-08/22/c_1118744.htm)

#### 最近工作 · 日期待核验

<details>
<summary><strong>1. Teaching &amp; Learning</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://en.xjtu.edu.cn/teachingandlearning.html)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：Teaching &amp; Learning 可通过原始链接查看完整项目、论文或数据说明。

</details>

#### 代表作

<details>
<summary><strong>1. Teaching &amp; Learning</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://en.xjtu.edu.cn/teachingandlearning.html)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：Teaching &amp; Learning 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>2. XJTU team achieves breakthrough in AI-driven operation management</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://en.xjtu.edu.cn/2025-08/04/c_1116437.htm)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：XJTU team achieves breakthrough in AI-driven operation management 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>3. XJTU team achieves breakthrough in special functional alloys</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://en.xjtu.edu.cn/2025-07/28/c_1116491.htm)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：XJTU team achieves breakthrough in special functional alloys 可通过原始链接查看完整项目、论文或数据说明。

</details>

</details>

## 港科广

### The Hong Kong University of Science and Technology (Guangzhou)（5）

<details>
<summary><img src="https://www.google.com/s2/favicons?domain_url=https%3A%2F%2Fprecognition.team&amp;sz=128" width="32" height="32" alt="Precognition Lab logo"> &nbsp;<strong>Precognition Lab</strong> · <code>verified</code></summary>

<br>

Precognition Lab 隶属于 The Hong Kong University of Science and Technology (Guangzhou)，是一支主要关注具身智能、计算机视觉、机器人等方向的高校实验室。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** The Hong Kong University of Science and Technology (Guangzhou)
- **主要方向：** 具身智能、计算机视觉、机器人、多模态学习
- **负责人：** [负责人/成员页](https://precognition.team/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://precognition.team/)

#### 最近工作 · 日期待核验

<details>
<summary><strong>1. [Semantic Scholar]</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://www.semanticscholar.org/author/Junwei-Liang/1915796)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：[Semantic Scholar] 可通过原始链接查看完整项目、论文或数据说明。

</details>

#### 代表作

<details>
<summary><strong>1. [Semantic Scholar]</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://www.semanticscholar.org/author/Junwei-Liang/1915796)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：[Semantic Scholar] 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>2. &amp;nbsp; Publications</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://precognition.team/index.html#publications)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：&amp;nbsp; Publications 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>3. cool publications and demos</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://precognition.team/index.html#publications)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：cool publications and demos 可通过原始链接查看完整项目、论文或数据说明。

</details>

</details>

<details>
<summary><img src="https://www.google.com/s2/favicons?domain_url=https%3A%2F%2Fenvision-research.hkust-gz.edu.cn&amp;sz=128" width="32" height="32" alt="ENVISION Lab logo"> &nbsp;<strong>ENVISION Lab</strong> · <code>verified</code></summary>

<br>

ENVISION Lab 隶属于 The Hong Kong University of Science and Technology (Guangzhou)，是一支主要关注生成式 AI、视频生成、三维生成等方向的高校实验室。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** The Hong Kong University of Science and Technology (Guangzhou)
- **主要方向：** 生成式 AI、视频生成、三维生成、计算机视觉
- **负责人：** [负责人/成员页](https://envision-research.hkust-gz.edu.cn/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://envision-research.hkust-gz.edu.cn/)

#### 最近工作 · 日期待核验

<details>
<summary><strong>1. ENVISION Lab @ HKUST(GZ)</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://envision-research.hkust-gz.edu.cn/index.html)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：ENVISION Lab @ HKUST(GZ) 可通过原始链接查看完整项目、论文或数据说明。

</details>

#### 代表作

<details>
<summary><strong>1. ENVISION Lab @ HKUST(GZ)</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://envision-research.hkust-gz.edu.cn/index.html)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：ENVISION Lab @ HKUST(GZ) 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>2. Research track · Generative Ai</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://envision-research.hkust-gz.edu.cn/)

**摘要 / 项目说明**

这是团队的官方研究入口，可继续访问其研究方向、项目或论文列表；该条目不是单篇论文，因此不展示论文引用量。

</details>

<details>
<summary><strong>3. Research track · Video Generation</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://envision-research.hkust-gz.edu.cn/)

**摘要 / 项目说明**

这是团队的官方研究入口，可继续访问其研究方向、项目或论文列表；该条目不是单篇论文，因此不展示论文引用量。

</details>

</details>

<details>
<summary><img src="https://github.com/DSAILatHKUST.png?size=160" width="32" height="32" alt="HKUST(GZ) Data Science &amp; Artificial Intelligence Lab (DSAIL) logo"> &nbsp;<strong>HKUST(GZ) Data Science &amp; Artificial Intelligence Lab (DSAIL)</strong> · <code>verified</code></summary>

<br>

HKUST(GZ) Data Science & Artificial Intelligence Lab (DSAIL) 隶属于 The Hong Kong University of Science and Technology (Guangzhou)，是一支主要关注大语言模型、AI for Science、图学习等方向的高校实验室。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** The Hong Kong University of Science and Technology (Guangzhou)
- **主要方向：** 大语言模型、AI for Science、图学习、智能体
- **负责人：** [负责人/成员页](https://github.com/DSAILatHKUST) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [GitHub](https://github.com/DSAILatHKUST) · [Hugging Face](https://huggingface.co/HKUST-DSAIL)

#### 最近工作 · 2024-06-29

<details>
<summary><strong>1. Config files for my GitHub profile.</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**1**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/DSAILatHKUST/DSAILatHKUST)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：Config files for my GitHub profile. 可通过原始链接查看完整项目、论文或数据说明。

</details>

#### 代表作

<details>
<summary><strong>1. Config files for my GitHub profile.</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**1**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/DSAILatHKUST/DSAILatHKUST)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：Config files for my GitHub profile. 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>2. Research track · Large Language Models</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://github.com/DSAILatHKUST)

**摘要 / 项目说明**

这是团队的官方研究入口，可继续访问其研究方向、项目或论文列表；该条目不是单篇论文，因此不展示论文引用量。

</details>

<details>
<summary><strong>3. Research track · Ai For Science</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://huggingface.co/HKUST-DSAIL)

**摘要 / 项目说明**

这是团队的官方研究入口，可继续访问其研究方向、项目或论文列表；该条目不是单篇论文，因此不展示论文引用量。

</details>

</details>

<details>
<summary><img src="https://www.google.com/s2/favicons?domain_url=https%3A%2F%2Fmdi.hkust-gz.edu.cn&amp;sz=128" width="32" height="32" alt="HKUST(GZ) Medical Data Intelligence Lab logo"> &nbsp;<strong>HKUST(GZ) Medical Data Intelligence Lab</strong> · <code>verified</code></summary>

<br>

HKUST(GZ) Medical Data Intelligence Lab 隶属于 The Hong Kong University of Science and Technology (Guangzhou)，是一支主要关注医疗 AI、计算病理、多模态学习等方向的高校实验室。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** The Hong Kong University of Science and Technology (Guangzhou)
- **主要方向：** 医疗 AI、计算病理、多模态学习、数据挖掘
- **负责人：** [负责人/成员页](https://mdi.hkust-gz.edu.cn/en/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://mdi.hkust-gz.edu.cn/en/)

#### 最近工作 · 日期待核验

<details>
<summary><strong>1. Core: Precision Medical Assistance System</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://mdi.hkust-gz.edu.cn/en/)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：Core: Precision Medical Assistance System 可通过原始链接查看完整项目、论文或数据说明。

</details>

#### 代表作

<details>
<summary><strong>1. Core: Precision Medical Assistance System</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://mdi.hkust-gz.edu.cn/en/)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：Core: Precision Medical Assistance System 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>2. Care: Outpatient Follow-up Management Platform</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://mdi.hkust-gz.edu.cn/en/)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：Care: Outpatient Follow-up Management Platform 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>3. Intelligent Multimodal Medical Data Platform</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://mdi.hkust-gz.edu.cn/en/)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：Intelligent Multimodal Medical Data Platform 可通过原始链接查看完整项目、论文或数据说明。

</details>

</details>

<details>
<summary><img src="https://www.google.com/s2/favicons?domain_url=https%3A%2F%2Fdsa.hkust-gz.edu.cn&amp;sz=128" width="32" height="32" alt="HKUST(GZ) High-Performance Machine Learning Lab logo"> &nbsp;<strong>HKUST(GZ) High-Performance Machine Learning Lab</strong> · <code>provisional</code></summary>

<br>

HKUST(GZ) High-Performance Machine Learning Lab 隶属于 The Hong Kong University of Science and Technology (Guangzhou)，是一支主要关注机器学习、AI 系统、分布式训练等方向的高校实验室。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** The Hong Kong University of Science and Technology (Guangzhou)
- **主要方向：** 机器学习、AI 系统、分布式训练、优化方法
- **负责人：** [负责人/成员页](https://dsa.hkust-gz.edu.cn/research/labs-institutes/high-performance-machine-learning-laboratory/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://dsa.hkust-gz.edu.cn/research/labs-institutes/high-performance-machine-learning-laboratory/)

#### 最近工作 · 日期待核验

<details>
<summary><strong>1. HKUST(GZ) X Program</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://rd.hkust-gz.edu.cn/2025/04/hkustgz-explorers-undergraduate-research-program-x-program-%E9%A6%99%E6%B8%AF%E7%A7%91%E6%8A%80%E5%A4%A7%E5%AD%A6%EF%BC%88%E5%B9%BF%E5%B7%9E%EF%BC%89%E6%8E%A2%E7%B4%A2%E8%80%85/#new_tab)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：HKUST(GZ) X Program 可通过原始链接查看完整项目、论文或数据说明。

</details>

#### 代表作

<details>
<summary><strong>1. HKUST(GZ) X Program</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://rd.hkust-gz.edu.cn/2025/04/hkustgz-explorers-undergraduate-research-program-x-program-%E9%A6%99%E6%B8%AF%E7%A7%91%E6%8A%80%E5%A4%A7%E5%AD%A6%EF%BC%88%E5%B9%BF%E5%B7%9E%EF%BC%89%E6%8E%A2%E7%B4%A2%E8%80%85/#new_tab)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：HKUST(GZ) X Program 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>2. BSc in Data Science and Big Data Technology</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://dsa.hkust-gz.edu.cn/programs/undergraduate-program/bsc-in-data-science-and-big-data/)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：BSc in Data Science and Big Data Technology 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>3. MPhil in Data Science and Analytics</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://dsa.hkust-gz.edu.cn/programs/research-postgraduate-program/mphil-in-data-science-and-analytics/)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：MPhil in Data Science and Analytics 可通过原始链接查看完整项目、论文或数据说明。

</details>

</details>

## 香港三校

### The University of Hong Kong（3）

<details>
<summary><img src="https://github.com/HKUDS.png?size=160" width="32" height="32" alt="HKU Data Intelligence Lab (HKUDS) logo"> &nbsp;<strong>HKU Data Intelligence Lab (HKUDS)</strong> · <code>verified</code></summary>

<br>

HKU Data Intelligence Lab (HKUDS) 隶属于 The University of Hong Kong，是一支主要关注大语言模型、检索增强生成、智能体等方向的高校实验室。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** The University of Hong Kong
- **主要方向：** 大语言模型、检索增强生成、智能体、推荐系统
- **负责人：** [负责人/成员页](https://github.com/HKUDS) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [GitHub](https://github.com/HKUDS)

#### 最近工作 · 2026

<details>
<summary><strong>2. OpenPhone: Mobile Agentic Foundation Models</strong> · Findings of the Association for Computational Linguistics: ACL 2026 · 2026</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22OpenPhone%3A+Mobile+Agentic+Foundation+Models%22)（未缓存未经核验的数字）
- GitHub Stars：**932**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://doi.org/10.18653/v1/2026.findings-acl.1518)

**基于 Abstract 的 TL;DR**

研究者提出了OpenPhone，一个可以在移动设备上运行的GUI agent系统。该系统利用了设备和云之间的合作，能够获得成本效益的局部模型和高能力的云模型的优势。通过两阶段的训练和实时复杂性评估，OpenPhone能够有效地解决移动设备上的性能问题，并在云上执行困难任务。

</details>

#### 代表作

<details>
<summary><strong>1. [KDD&#39;2026] &quot;VideoRAG: Chat with Your Videos&quot;</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**3218**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/HKUDS/VideoRAG)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：[KDD&#39;2026] &quot;VideoRAG: Chat with Your Videos&quot; 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>2. OpenPhone: Mobile Agentic Foundation Models</strong> · Findings of the Association for Computational Linguistics: ACL 2026 · 2026</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22OpenPhone%3A+Mobile+Agentic+Foundation+Models%22)（未缓存未经核验的数字）
- GitHub Stars：**932**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://doi.org/10.18653/v1/2026.findings-acl.1518)

**基于 Abstract 的 TL;DR**

研究者提出了OpenPhone，一个可以在移动设备上运行的GUI agent系统。该系统利用了设备和云之间的合作，能够获得成本效益的局部模型和高能力的云模型的优势。通过两阶段的训练和实时复杂性评估，OpenPhone能够有效地解决移动设备上的性能问题，并在云上执行困难任务。

</details>

<details>
<summary><strong>3. GraphGPT: Graph Instruction Tuning for Large Language Models</strong> · arXiv (Cornell University) · 2023</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22GraphGPT%3A+Graph+Instruction+Tuning+for+Large+Language+Models%22)（未缓存未经核验的数字）
- GitHub Stars：**834**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2310.13023)

**基于 Abstract 的 TL;DR**

该研究探讨了如何在零射学习环境中提高图神经网络的通用性。作者提出了GraphGPT框架，结合语言模型和图结构知识，实现了图结构理解和适应性增强。结果表明，GraphGPT在监督和零射图学习任务上表现出超越现有基准的优势。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2310.13023"><img src="https://ar5iv.labs.arxiv.org/html/2310.13023/assets/x2.png" alt="Figure 2. The overall architecture of our proposed GraphGPT with graph instruction tuning paradigm." width="720"></a>

> Figure 2. The overall architecture of our proposed GraphGPT with graph instruction tuning paradigm.
> 来源：[原论文](https://arxiv.org/abs/2310.13023)

</details>

</details>

<details>
<summary><img src="https://github.com/hkust-vgd.png?size=160" width="32" height="32" alt="HKU Super Artificial Intelligence Lab (SAIL) logo"> &nbsp;<strong>HKU Super Artificial Intelligence Lab (SAIL)</strong> · <code>verified</code></summary>

<br>

HKU Super Artificial Intelligence Lab (SAIL) 隶属于 The University of Hong Kong，是一支主要关注生成式 AI、具身智能、多模态学习等方向的高校实验室。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** The University of Hong Kong
- **主要方向：** 生成式 AI、具身智能、多模态学习、空间智能
- **负责人：** [负责人/成员页](https://sail.ai.hku.hk/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://sail.ai.hku.hk/) · [GitHub](https://github.com/hkust-vgd)

#### 最近工作 · 2025

<details>
<summary><strong>2. CoraLSRT: Revisiting Coral Reef Semantic Segmentation by Feature Rectification via Self-Supervised Guidance</strong> · 2025 IEEE/CVF International Conference on Computer Vision (ICCV) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22CoraLSRT%3A+Revisiting+Coral+Reef+Semantic+Segmentation+by+Feature+Rectification+via+Self-Supervised+Guidance%22)（未缓存未经核验的数字）
- GitHub Stars：**0**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://doi.org/10.1109/iccv51701.2025.01857)

**摘要 / 项目说明**

已匹配论文《CoraLSRT: Revisiting Coral Reef Semantic Segmentation by Feature Rectification via Self-Supervised Guidance》，但开放元数据暂未提供 Abstract；请通过论文原文查看方法与结论。

</details>

#### 代表作

<details>
<summary><strong>1. CoralSCOP: Segment any COral Image on this Planet</strong> · 2024 IEEE/CVF Conference on Computer Vision and Pattern Recognition (CVPR) · 2024</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22CoralSCOP%3A+Segment+any+COral+Image+on+this+Planet%22)（未缓存未经核验的数字）
- GitHub Stars：**2**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://doi.org/10.1109/cvpr52733.2024.02661)

**基于 Abstract 的 TL;DR**

该研究开发了CoralSCop，第一款专门用于自动密集分段的海绵 coral reefs 的模型。该模型可以准确地标记不同海绵实体，并解决海绵图像的语义分析挑战。通过引入新式并行语义分支，CoralSCop能够产生高质量的海绵掩码，支持多种下游海绵 reef 分析任务。

</details>

<details>
<summary><strong>2. CoraLSRT: Revisiting Coral Reef Semantic Segmentation by Feature Rectification via Self-Supervised Guidance</strong> · 2025 IEEE/CVF International Conference on Computer Vision (ICCV) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22CoraLSRT%3A+Revisiting+Coral+Reef+Semantic+Segmentation+by+Feature+Rectification+via+Self-Supervised+Guidance%22)（未缓存未经核验的数字）
- GitHub Stars：**0**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://doi.org/10.1109/iccv51701.2025.01857)

**摘要 / 项目说明**

已匹配论文《CoraLSRT: Revisiting Coral Reef Semantic Segmentation by Feature Rectification via Self-Supervised Guidance》，但开放元数据暂未提供 Abstract；请通过论文原文查看方法与结论。

</details>

<details>
<summary><strong>3. Time-of-Day Neural Style Transfer for Architectural Photographs</strong> · arXiv (Cornell University) · 2022</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Time-of-Day+Neural+Style+Transfer+for+Architectural+Photographs%22)（未缓存未经核验的数字）
- GitHub Stars：**43**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2209.05800)

**基于 Abstract 的 TL;DR**

该研究旨在解决建筑摄影中的风格转换问题。现有的神经风格转换方法难以处理建筑摄影的特殊组成，导致生成不符合实际的光线、颜色 rendition 和视觉artifact。该研究提出了一个专门针对建筑摄影的神经风格转换方法，该方法分为两个子网络，分别处理前景和背景。实验结果表明该方法可以产生 photorealistic 的光线和颜色 rendition，且优于一般的图像转换和随机风格转换方法。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2209.05800"><img src="https://ar5iv.labs.arxiv.org/html/2209.05800/assets/figures/translation_framework_final_v2.png" alt="Figure 3 : The common image-to-image translation network architecture. x 1 subscript 𝑥 1 x_{1} and x 2 subscript 𝑥 2 x_{2} are images from two domains ( X 1 , X 2 subscript 𝑋 1 subscript 𝑋 2 X_{1},X_{2} ). x 1 → 2 subscript 𝑥 → 1 2 x_{1\rightarrow 2} and x 2 → 1 subscript 𝑥 → 2 1 x_{2\rightarrow 1} are style transferred outputs between two domains. x 1 → 1 subscript 𝑥 → 1 1 x_{1\rightarrow 1} and x 2 → 2 subscript 𝑥 → 2 2 x_{2\rightarrow 2} are reconstruction outputs. We use the same architecture for foreground and background translation." width="720"></a>

> Figure 3 : The common image-to-image translation network architecture. x 1 subscript 𝑥 1 x_{1} and x 2 subscript 𝑥 2 x_{2} are images from two domains ( X 1 , X 2 subscript 𝑋 1 subscript 𝑋 2 X_{1},X_{2} ). x 1 → 2 subscript 𝑥 → 1 2 x_{1\rightarrow 2} and x 2 → 1 subscript 𝑥 → 2 1 x_{2\rightarrow 1} are style transferred outputs between two domains. x 1 → 1 subscript 𝑥 → 1 1 x_{1\rightarrow 1} and x 2 → 2 subscript 𝑥 → 2 2 x_{2\rightarrow 2} are reconstruction outputs. We use the same architecture for foreground and background translation.
> 来源：[原论文](https://arxiv.org/abs/2209.05800)

</details>

</details>

<details>
<summary><img src="https://www.google.com/s2/favicons?domain_url=https%3A%2F%2Fsec.hku.hk&amp;sz=128" width="32" height="32" alt="HKU JC STEM Lab of Intelligent Cybersecurity logo"> &nbsp;<strong>HKU JC STEM Lab of Intelligent Cybersecurity</strong> · <code>verified</code></summary>

<br>

HKU JC STEM Lab of Intelligent Cybersecurity 隶属于 The University of Hong Kong，是一支主要关注AI 安全、代码生成、可信 AI等方向的高校实验室。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** The University of Hong Kong
- **主要方向：** AI 安全、代码生成、可信 AI、智能体安全
- **负责人：** [负责人/成员页](https://sec.hku.hk/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://sec.hku.hk/)

#### 最近工作 · 2025

<details>
<summary><strong>2. FuzzAug: Data Augmentation by Coverage-guided Fuzzing for Neural Test Generation</strong> · Findings of the Association for Computational Linguistics: EMNLP 2025 · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22FuzzAug%3A+Data+Augmentation+by+Coverage-guided+Fuzzing+for+Neural+Test+Generation%22)（未缓存未经核验的数字）
- [论文 / 项目原始入口](https://doi.org/10.18653/v1/2025.findings-emnlp.847)

**基于 Abstract 的 TL;DR**

该研究探讨了如何利用大型语言模型生成高质量的自动化测试案例。研究人员提出了FuzzAug数据增强技术，通过将有效测试语义和覆盖指引输入结合使用，提高了语言模型在测试生成方面的性能。

</details>

#### 代表作

<details>
<summary><strong>1. BugAuditor: Detecting Bugs via Inconsistent Defensive Code Auditing</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://sec.hku.hk/publications/#lin2026bugauditor)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：BugAuditor: Detecting Bugs via Inconsistent Defensive Code Auditing 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>2. FuzzAug: Data Augmentation by Coverage-guided Fuzzing for Neural Test Generation</strong> · Findings of the Association for Computational Linguistics: EMNLP 2025 · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22FuzzAug%3A+Data+Augmentation+by+Coverage-guided+Fuzzing+for+Neural+Test+Generation%22)（未缓存未经核验的数字）
- [论文 / 项目原始入口](https://doi.org/10.18653/v1/2025.findings-emnlp.847)

**基于 Abstract 的 TL;DR**

该研究探讨了如何利用大型语言模型生成高质量的自动化测试案例。研究人员提出了FuzzAug数据增强技术，通过将有效测试语义和覆盖指引输入结合使用，提高了语言模型在测试生成方面的性能。

</details>

<details>
<summary><strong>3. Evaluating Program Semantics Reasoning with Type Inference in System F</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://sec.hku.hk/publications/#he2025tfbench)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：Evaluating Program Semantics Reasoning with Type Inference in System F 可通过原始链接查看完整项目、论文或数据说明。

</details>

</details>

### The Chinese University of Hong Kong（4）

<details>
<summary><img src="https://github.com/open-mmlab.png?size=160" width="32" height="32" alt="CUHK Multimedia Laboratory (MMLab) logo"> &nbsp;<strong>CUHK Multimedia Laboratory (MMLab)</strong> · <code>verified</code></summary>

<br>

CUHK Multimedia Laboratory (MMLab) 隶属于 The Chinese University of Hong Kong，是一支主要关注计算机视觉、多模态学习、生成式 AI等方向的高校实验室。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** The Chinese University of Hong Kong
- **主要方向：** 计算机视觉、多模态学习、生成式 AI、视频理解
- **负责人：** [负责人/成员页](https://mmlab.ie.cuhk.edu.hk/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://mmlab.ie.cuhk.edu.hk/) · [GitHub](https://github.com/open-mmlab)

#### 最近工作 · 2025-12-20

<details>
<summary><strong>1. [ECCV 2024] PowerPaint, a versatile image inpainting model that supports text-guided object inpainting, object removal, image outpainting and shape-guided object inpainting with only a single model. 一个高质量多功能的图像修补模型，可以同时支持插入物体、移除物体、图像扩展、形状可控的物体生成，只需要一个模型</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**1095**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/open-mmlab/PowerPaint)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：[ECCV 2024] PowerPaint, a versatile image inpainting model that supports text-guided object inpainting, object removal, image outpainting and shape-guided object inpainting with only a single model. 一个高质量多功能的图像修补模型，可以同时支持插入物体、移除物体、图像扩展、形状可控的物体生成，只需要一个模型 可通过原始链接查看完整项目、论文或数据说明。

</details>

#### 代表作

<details>
<summary><strong>1. [ECCV 2024] PowerPaint, a versatile image inpainting model that supports text-guided object inpainting, object removal, image outpainting and shape-guided object inpainting with only a single model. 一个高质量多功能的图像修补模型，可以同时支持插入物体、移除物体、图像扩展、形状可控的物体生成，只需要一个模型</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**1095**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/open-mmlab/PowerPaint)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：[ECCV 2024] PowerPaint, a versatile image inpainting model that supports text-guided object inpainting, object removal, image outpainting and shape-guided object inpainting with only a single model. 一个高质量多功能的图像修补模型，可以同时支持插入物体、移除物体、图像扩展、形状可控的物体生成，只需要一个模型 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>2. [CVPR 2024] PIA, your Personalized Image Animator. Animate your images by text prompt, combing with Dreambooth, achieving stunning videos.           PIA，你的个性化图像动画生成器，利用文本提示将图像变为奇妙的动画</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**975**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/open-mmlab/PIA)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：[CVPR 2024] PIA, your Personalized Image Animator. Animate your images by text prompt, combing with Dreambooth, achieving stunning videos. PIA，你的个性化图像动画生成器，利用文本提示将图像变为奇妙的动画 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>3. [ECCV 2024] AnyControl, a multi-control image synthesis model that supports any combination of user provided control signals. 一个支持用户自由输入控制信号的图像生成模型，能够根据多种控制生成自然和谐的结果！</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**132**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/open-mmlab/AnyControl)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：[ECCV 2024] AnyControl, a multi-control image synthesis model that supports any combination of user provided control signals. 一个支持用户自由输入控制信号的图像生成模型，能够根据多种控制生成自然和谐的结果！ 可通过原始链接查看完整项目、论文或数据说明。

</details>

</details>

<details>
<summary><img src="https://www.google.com/s2/favicons?domain_url=https%3A%2F%2Fwww.cuhk.edu.hk&amp;sz=128" width="32" height="32" alt="CUHK T Stone Robotics Institute logo"> &nbsp;<strong>CUHK T Stone Robotics Institute</strong> · <code>verified</code></summary>

<br>

CUHK T Stone Robotics Institute 隶属于 The Chinese University of Hong Kong，是一支主要关注机器人、手术机器人、具身智能等方向的高校研究院。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** The Chinese University of Hong Kong
- **主要方向：** 机器人、手术机器人、具身智能、计算机视觉
- **负责人：** [负责人/成员页](https://www.cuhk.edu.hk/ri/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://www.cuhk.edu.hk/ri/)

#### 最近工作 · 日期待核验

<details>
<summary><strong>1. Research track · Robotics</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://www.cuhk.edu.hk/ri/)

**摘要 / 项目说明**

这是团队的官方研究入口，可继续访问其研究方向、项目或论文列表；该条目不是单篇论文，因此不展示论文引用量。

</details>

#### 代表作

<details>
<summary><strong>1. Research track · Robotics</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://www.cuhk.edu.hk/ri/)

**摘要 / 项目说明**

这是团队的官方研究入口，可继续访问其研究方向、项目或论文列表；该条目不是单篇论文，因此不展示论文引用量。

</details>

<details>
<summary><strong>2. Research track · Surgical Robotics</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://www.cuhk.edu.hk/ri/)

**摘要 / 项目说明**

这是团队的官方研究入口，可继续访问其研究方向、项目或论文列表；该条目不是单篇论文，因此不展示论文引用量。

</details>

<details>
<summary><strong>3. Research track · Embodied Ai</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://www.cuhk.edu.hk/ri/)

**摘要 / 项目说明**

这是团队的官方研究入口，可继续访问其研究方向、项目或论文列表；该条目不是单篇论文，因此不展示论文引用量。

</details>

</details>

<details>
<summary><img src="https://www.google.com/s2/favicons?domain_url=https%3A%2F%2Fcuhkleggedrobotlab.github.io&amp;sz=128" width="32" height="32" alt="CUHK Legged Robot Lab logo"> &nbsp;<strong>CUHK Legged Robot Lab</strong> · <code>verified</code></summary>

<br>

CUHK Legged Robot Lab 隶属于 The Chinese University of Hong Kong，是一支主要关注足式机器人、具身智能、控制理论等方向的高校实验室。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** The Chinese University of Hong Kong
- **主要方向：** 足式机器人、具身智能、控制理论、机器感知
- **负责人：** [负责人/成员页](https://cuhkleggedrobotlab.github.io/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://cuhkleggedrobotlab.github.io/)

#### 最近工作 · 日期待核验

<details>
<summary><strong>1. Research track · Legged Robotics</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://cuhkleggedrobotlab.github.io/)

**摘要 / 项目说明**

这是团队的官方研究入口，可继续访问其研究方向、项目或论文列表；该条目不是单篇论文，因此不展示论文引用量。

</details>

#### 代表作

<details>
<summary><strong>1. Research track · Legged Robotics</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://cuhkleggedrobotlab.github.io/)

**摘要 / 项目说明**

这是团队的官方研究入口，可继续访问其研究方向、项目或论文列表；该条目不是单篇论文，因此不展示论文引用量。

</details>

<details>
<summary><strong>2. Research track · Embodied Ai</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://cuhkleggedrobotlab.github.io/)

**摘要 / 项目说明**

这是团队的官方研究入口，可继续访问其研究方向、项目或论文列表；该条目不是单篇论文，因此不展示论文引用量。

</details>

<details>
<summary><strong>3. Research track · Control</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://cuhkleggedrobotlab.github.io/)

**摘要 / 项目说明**

这是团队的官方研究入口，可继续访问其研究方向、项目或论文列表；该条目不是单篇论文，因此不展示论文引用量。

</details>

</details>

<details>
<summary><img src="https://www.google.com/s2/favicons?domain_url=https%3A%2F%2Fcuhklpl.github.io&amp;sz=128" width="32" height="32" alt="CUHK Language Processing Lab logo"> &nbsp;<strong>CUHK Language Processing Lab</strong> · <code>provisional</code></summary>

<br>

CUHK Language Processing Lab 隶属于 The Chinese University of Hong Kong，是一支主要关注自然语言处理、心理语言学、可解释 AI等方向的高校实验室。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** The Chinese University of Hong Kong
- **主要方向：** 自然语言处理、心理语言学、可解释 AI、模型行为
- **负责人：** [Zhenguang Cai](https://cuhklpl.github.io/)（Lab Director）
- **官方入口：** [官网](https://cuhklpl.github.io/)

#### 最近工作 · 2024

<details>
<summary><strong>3. Evaluating Grammatical Well-Formedness in Large Language Models: A Comparative Study with Human Judgments</strong> · Proceedings of the Workshop on Cognitive Modeling and Computational Linguistics · 2024</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Evaluating+Grammatical+Well-Formedness+in+Large+Language+Models%3A+A+Comparative+Study+with+Human+Judgments%22)（未缓存未经核验的数字）
- [论文 / 项目原始入口](https://doi.org/10.18653/v1/2024.cmcl-1.16)

**基于 Abstract 的 TL;DR**

本研究探讨了大型语言模型（LLM）在表示语法正确性的表达方式上与人类的相似性。通过三个预先注册的实验，研究人员收集了Chat-GPT和Vicuna等LLM处理的2400多个英文句子，并与人类判断结果进行比较。结果显示，LLMs与人类判断结果的语法正确性评估有着显著的相似性，但LLMs往往表现出更保守的判断。

</details>

#### 代表作

<details>
<summary><strong>1. Linguistic Minimal Pairs Elicit Linguistic Similarity in Large Language Models</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://aclanthology.org/2025.coling-main.459/)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：Linguistic Minimal Pairs Elicit Linguistic Similarity in Large Language Models 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>2. Unveiling Language Competence Neurons: A Psycholinguistic Approach to Model Interpretability</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://aclanthology.org/2025.coling-main.677/)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：Unveiling Language Competence Neurons: A Psycholinguistic Approach to Model Interpretability 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>3. Evaluating Grammatical Well-Formedness in Large Language Models: A Comparative Study with Human Judgments</strong> · Proceedings of the Workshop on Cognitive Modeling and Computational Linguistics · 2024</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Evaluating+Grammatical+Well-Formedness+in+Large+Language+Models%3A+A+Comparative+Study+with+Human+Judgments%22)（未缓存未经核验的数字）
- [论文 / 项目原始入口](https://doi.org/10.18653/v1/2024.cmcl-1.16)

**基于 Abstract 的 TL;DR**

本研究探讨了大型语言模型（LLM）在表示语法正确性的表达方式上与人类的相似性。通过三个预先注册的实验，研究人员收集了Chat-GPT和Vicuna等LLM处理的2400多个英文句子，并与人类判断结果进行比较。结果显示，LLMs与人类判断结果的语法正确性评估有着显著的相似性，但LLMs往往表现出更保守的判断。

</details>

</details>

### The Hong Kong University of Science and Technology（4）

<details>
<summary><img src="https://github.com/DVLab.png?size=160" width="32" height="32" alt="HKUST Deep Vision Lab (DV Lab) logo"> &nbsp;<strong>HKUST Deep Vision Lab (DV Lab)</strong> · <code>verified</code></summary>

<br>

HKUST Deep Vision Lab (DV Lab) 隶属于 The Hong Kong University of Science and Technology，是一支主要关注计算机视觉、多模态学习、生成式 AI等方向的高校实验室。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** The Hong Kong University of Science and Technology
- **主要方向：** 计算机视觉、多模态学习、生成式 AI、自动驾驶
- **负责人：** [负责人/成员页](https://www.dvlab.ai/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://www.dvlab.ai/) · [GitHub](https://github.com/DVLab)

#### 最近工作 · 日期待核验

<details>
<summary><strong>1. Research track · Computer Vision</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://www.dvlab.ai/)

**摘要 / 项目说明**

这是团队的官方研究入口，可继续访问其研究方向、项目或论文列表；该条目不是单篇论文，因此不展示论文引用量。

</details>

#### 代表作

<details>
<summary><strong>1. Research track · Computer Vision</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://www.dvlab.ai/)

**摘要 / 项目说明**

这是团队的官方研究入口，可继续访问其研究方向、项目或论文列表；该条目不是单篇论文，因此不展示论文引用量。

</details>

<details>
<summary><strong>2. Research track · Multimodal</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://github.com/DVLab)

**摘要 / 项目说明**

这是团队的官方研究入口，可继续访问其研究方向、项目或论文列表；该条目不是单篇论文，因此不展示论文引用量。

</details>

<details>
<summary><strong>3. Research track · Generative Ai</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://www.dvlab.ai/)

**摘要 / 项目说明**

这是团队的官方研究入口，可继续访问其研究方向、项目或论文列表；该条目不是单篇论文，因此不展示论文引用量。

</details>

</details>

<details>
<summary><img src="https://www.google.com/s2/favicons?domain_url=https%3A%2F%2Fcaire.hkust.edu.hk&amp;sz=128" width="32" height="32" alt="HKUST Centre for Artificial Intelligence Research (CAiRE) logo"> &nbsp;<strong>HKUST Centre for Artificial Intelligence Research (CAiRE)</strong> · <code>provisional</code></summary>

<br>

HKUST Centre for Artificial Intelligence Research (CAiRE) 隶属于 The Hong Kong University of Science and Technology，是一支主要关注自然语言处理、对话智能、多模态学习等方向的高校研究中心。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** The Hong Kong University of Science and Technology
- **主要方向：** 自然语言处理、对话智能、多模态学习、负责任 AI
- **负责人：** [负责人/成员页](https://caire.hkust.edu.hk/about/about-caire) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://caire.hkust.edu.hk/about/about-caire)

#### 最近工作 · 日期待核验

<details>
<summary><strong>1. Skip to main content</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://caire.hkust.edu.hk/research/projects#main-content)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：Skip to main content 可通过原始链接查看完整项目、论文或数据说明。

</details>

#### 代表作

<details>
<summary><strong>1. Skip to main content</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://caire.hkust.edu.hk/research/projects#main-content)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：Skip to main content 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>2. Research track · Natural Language Processing</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://caire.hkust.edu.hk/about/about-caire)

**摘要 / 项目说明**

这是团队的官方研究入口，可继续访问其研究方向、项目或论文列表；该条目不是单篇论文，因此不展示论文引用量。

</details>

<details>
<summary><strong>3. Research track · Conversational Ai</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://caire.hkust.edu.hk/about/about-caire)

**摘要 / 项目说明**

这是团队的官方研究入口，可继续访问其研究方向、项目或论文列表；该条目不是单篇论文，因此不展示论文引用量。

</details>

</details>

<details>
<summary><img src="https://github.com/HKUST-Aerial-Robotics.png?size=160" width="32" height="32" alt="HKUST Aerial Robotics Group logo"> &nbsp;<strong>HKUST Aerial Robotics Group</strong> · <code>verified</code></summary>

<br>

HKUST Aerial Robotics Group 隶属于 The Hong Kong University of Science and Technology，是一支主要关注空中机器人、同步定位与建图、具身智能等方向的高校研究组。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** The Hong Kong University of Science and Technology
- **主要方向：** 空中机器人、同步定位与建图、具身智能、自主系统
- **负责人：** [负责人/成员页](https://github.com/HKUST-Aerial-Robotics) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [GitHub](https://github.com/HKUST-Aerial-Robotics)

#### 最近工作 · 2024

<details>
<summary><strong>1. VINS-Multi: A Robust Asynchronous Multi-camera-IMU State Estimator</strong> · arXiv (Cornell University) · 2024</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22VINS-Multi%3A+A+Robust+Asynchronous+Multi-camera-IMU+State+Estimator%22)（未缓存未经核验的数字）
- GitHub Stars：**135**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2405.14539)

**基于 Abstract 的 TL;DR**

该研究旨在解决异步相机系统的状态估计问题，提出了VINS-Multi，一个能够处理异步输入框架的多相机-IMU状态估imator。实验结果表明，该估imator具有更好的性能和可靠性。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2405.14539"><img src="https://ar5iv.labs.arxiv.org/html/2405.14539/assets/figures/system.png" alt="Figure 2: The system architecture of the proposed state estimator. Note that the camera modules can be of mixed types." width="720"></a>

> Figure 2: The system architecture of the proposed state estimator. Note that the camera modules can be of mixed types.
> 来源：[原论文](https://arxiv.org/abs/2405.14539)

</details>

#### 代表作

<details>
<summary><strong>1. VINS-Multi: A Robust Asynchronous Multi-camera-IMU State Estimator</strong> · arXiv (Cornell University) · 2024</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22VINS-Multi%3A+A+Robust+Asynchronous+Multi-camera-IMU+State+Estimator%22)（未缓存未经核验的数字）
- GitHub Stars：**135**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2405.14539)

**基于 Abstract 的 TL;DR**

该研究旨在解决异步相机系统的状态估计问题，提出了VINS-Multi，一个能够处理异步输入框架的多相机-IMU状态估imator。实验结果表明，该估imator具有更好的性能和可靠性。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2405.14539"><img src="https://ar5iv.labs.arxiv.org/html/2405.14539/assets/figures/system.png" alt="Figure 2: The system architecture of the proposed state estimator. Note that the camera modules can be of mixed types." width="720"></a>

> Figure 2: The system architecture of the proposed state estimator. Note that the camera modules can be of mixed types.
> 来源：[原论文](https://arxiv.org/abs/2405.14539)

</details>

<details>
<summary><strong>2. OmniNxt: A Fully Open-source and Compact Aerial Robot with Omnidirectional Visual Perception</strong> · arXiv (Cornell University) · 2024</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22OmniNxt%3A+A+Fully+Open-source+and+Compact+Aerial+Robot+with+Omnidirectional+Visual+Perception%22)（未缓存未经核验的数字）
- GitHub Stars：**546**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2403.20085)

**基于 Abstract 的 TL;DR**

该研究旨在解决使用 omnidirectional Field of View (FoV) 相机在无人机中的挑战。研究人员提出了 OmniNxt，一个开源的无人机平台，可以实现高性能飞行控制器和多相机系统。通过实地实验，研究人员证明了 OmniNxt 在实际应用中具有超越其他方案的能力。该项目的硬件和软件都可供公开使用，包括docker镜像。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2403.20085"><img src="https://ar5iv.labs.arxiv.org/html/2403.20085/assets/inferrence_speed.png" alt="Figure 7: HITNET inference speed. Batch 1: The inference time of one group of data. Batch 4: The inference time of four groups of data concatenated on batch dimension. Stream 4: The inference time of four groups of data in multi-stream." width="720"></a>

> Figure 7: HITNET inference speed. Batch 1: The inference time of one group of data. Batch 4: The inference time of four groups of data concatenated on batch dimension. Stream 4: The inference time of four groups of data in multi-stream.
> 来源：[原论文](https://arxiv.org/abs/2403.20085)

</details>

<details>
<summary><strong>3. Online Monocular Lane Mapping Using Catmull-Rom Spline</strong> · arXiv (Cornell University) · 2023</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Online+Monocular+Lane+Mapping+Using+Catmull-Rom+Spline%22)（未缓存未经核验的数字）
- GitHub Stars：**437**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2307.11653)

**基于 Abstract 的 TL;DR**

本研究提出了一种基于单相机和 Odometry 的 online monocular lane mapping 方法。该方法将车道关联过程视为一个分配问题，使用双向图来表示车道关联关系，并将边的权重通过 Chamfer 距离、姿态不确定性和横向序列一致性来计算。研究人员详细设计了控制点初始化、曲线参数化和优化，以逐步创建、扩展和精确曲线。该方法在 OpenLane 数据集上进行实验，结果显示该方法改善了车道关联和 Odometry 精度，以及总体车道地图质量。

</details>

</details>

<details>
<summary><img src="https://www.google.com/s2/favicons?domain_url=https%3A%2F%2Fmrl.hkust.edu.hk&amp;sz=128" width="32" height="32" alt="HKUST Mevita Robotics Lab logo"> &nbsp;<strong>HKUST Mevita Robotics Lab</strong> · <code>provisional</code></summary>

<br>

HKUST Mevita Robotics Lab 隶属于 The Hong Kong University of Science and Technology，是一支主要关注机器人、触觉感知、灵巧操作等方向的高校实验室。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** The Hong Kong University of Science and Technology
- **主要方向：** 机器人、触觉感知、灵巧操作、物理智能
- **负责人：** [负责人/成员页](https://mrl.hkust.edu.hk/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://mrl.hkust.edu.hk/)

#### 最近工作 · 日期待核验

<details>
<summary><strong>1. Tactile Perception</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://mrl.hkust.edu.hk/research/#tactile-perception)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：Tactile Perception 可通过原始链接查看完整项目、论文或数据说明。

</details>

#### 代表作

<details>
<summary><strong>1. Tactile Perception</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://mrl.hkust.edu.hk/research/#tactile-perception)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：Tactile Perception 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>2. Embodied Dexterity</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://mrl.hkust.edu.hk/research/#embodied-dexterity)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：Embodied Dexterity 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>3. Miniature Biomedical Robotics</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://mrl.hkust.edu.hk/research/#miniature-biomedical)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：Miniature Biomedical Robotics 可通过原始链接查看完整项目、论文或数据说明。

</details>

</details>

## 新加坡两校

### National University of Singapore（4）

<details>
<summary><img src="https://www.google.com/s2/favicons?domain_url=https%3A%2F%2Fai.nus.edu.sg&amp;sz=128" width="32" height="32" alt="NUS Artificial Intelligence Institute logo"> &nbsp;<strong>NUS Artificial Intelligence Institute</strong> · <code>verified</code></summary>

<br>

NUS Artificial Intelligence Institute 隶属于 National University of Singapore，是一支主要关注基础模型、可信 AI、AI for Science等方向的高校研究院。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** National University of Singapore
- **主要方向：** 基础模型、可信 AI、AI for Science、AI 公益
- **负责人：** [负责人/成员页](https://ai.nus.edu.sg/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://ai.nus.edu.sg/)

#### 最近工作 · 日期待核验

<details>
<summary><strong>1. Research track · Foundation Models</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://ai.nus.edu.sg/)

**摘要 / 项目说明**

这是团队的官方研究入口，可继续访问其研究方向、项目或论文列表；该条目不是单篇论文，因此不展示论文引用量。

</details>

#### 代表作

<details>
<summary><strong>1. Research track · Foundation Models</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://ai.nus.edu.sg/)

**摘要 / 项目说明**

这是团队的官方研究入口，可继续访问其研究方向、项目或论文列表；该条目不是单篇论文，因此不展示论文引用量。

</details>

<details>
<summary><strong>2. Research track · Trustworthy Ai</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://ai.nus.edu.sg/wp-content/uploads/2025/07/Technical-Peogram.pdf)

**摘要 / 项目说明**

这是团队的官方研究入口，可继续访问其研究方向、项目或论文列表；该条目不是单篇论文，因此不展示论文引用量。

</details>

<details>
<summary><strong>3. Research track · Ai For Science</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://ai.nus.edu.sg/)

**摘要 / 项目说明**

这是团队的官方研究入口，可继续访问其研究方向、项目或论文列表；该条目不是单篇论文，因此不展示论文引用量。

</details>

</details>

<details>
<summary><img src="https://github.com/nusnlp.png?size=160" width="32" height="32" alt="NUS Natural Language Processing Group logo"> &nbsp;<strong>NUS Natural Language Processing Group</strong> · <code>verified</code></summary>

<br>

NUS Natural Language Processing Group 隶属于 National University of Singapore，是一支主要关注自然语言处理、大语言模型、多语言 AI等方向的高校研究组。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** National University of Singapore
- **主要方向：** 自然语言处理、大语言模型、多语言 AI、视频语言学习
- **负责人：** [负责人/成员页](https://github.com/nusnlp) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [GitHub](https://github.com/nusnlp)

#### 最近工作 · 2025

<details>
<summary><strong>2. Factorized Learning for Temporally Grounded Video-Language Models</strong> · arXiv (Cornell University) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Factorized+Learning+for+Temporally+Grounded+Video-Language+Models%22)（未缓存未经核验的数字）
- GitHub Stars：**24**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2512.24097)

**基于 Abstract 的 TL;DR**

研究人员探讨了视频理解中的时间定位和文本回应的关系，发现时间定位是文本回应的基础。他们提出了D$^2$VLM框架，将学习这两个任务分离出来，并引入了一种新的优化算法FPO，以便于同时优化时间定位和文本回应。实验结果表明，这个方法比传统方法更有效。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2512.24097"><img src="https://ar5iv.labs.arxiv.org/html/2512.24097/assets/x4.png" alt="Figure 4 : The proposed data synthesis pipeline, where factorized perturbation is imposed to form the dispreferred data." width="720"></a>

> Figure 4 : The proposed data synthesis pipeline, where factorized perturbation is imposed to form the dispreferred data.
> 来源：[原论文](https://arxiv.org/abs/2512.24097)

</details>

#### 代表作

<details>
<summary><strong>1. SlideTailor: Personalized Presentation Slide Generation for Scientific Papers</strong> · arXiv (Cornell University) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22SlideTailor%3A+Personalized+Presentation+Slide+Generation+for+Scientific+Papers%22)（未缓存未经核验的数字）
- GitHub Stars：**57**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2512.20292)

**基于 Abstract 的 TL;DR**

研究者提出了一种新颖的任务，即根据用户的偏好条件生成幻灯片。他们提出了一个人行为 Inspired 的框架，SlideTailor，可以逐步生成可编辑的幻灯片，以满足用户的需求。该框架利用自然而易于提供的artifact来隐含地编码用户偏好，并且有效地将这些偏好 distilled 和 generalization 到指导定制幻灯片生成。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2512.20292"><img src="https://ar5iv.labs.arxiv.org/html/2512.20292/assets/x2.png" alt="Figure 2: The conceptual pipeline of our proposed preference-guided paper-to-sildes generation framework." width="720"></a>

> Figure 2: The conceptual pipeline of our proposed preference-guided paper-to-sildes generation framework.
> 来源：[原论文](https://arxiv.org/abs/2512.20292)

</details>

<details>
<summary><strong>2. Factorized Learning for Temporally Grounded Video-Language Models</strong> · arXiv (Cornell University) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Factorized+Learning+for+Temporally+Grounded+Video-Language+Models%22)（未缓存未经核验的数字）
- GitHub Stars：**24**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2512.24097)

**基于 Abstract 的 TL;DR**

研究人员探讨了视频理解中的时间定位和文本回应的关系，发现时间定位是文本回应的基础。他们提出了D$^2$VLM框架，将学习这两个任务分离出来，并引入了一种新的优化算法FPO，以便于同时优化时间定位和文本回应。实验结果表明，这个方法比传统方法更有效。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2512.24097"><img src="https://ar5iv.labs.arxiv.org/html/2512.24097/assets/x4.png" alt="Figure 4 : The proposed data synthesis pipeline, where factorized perturbation is imposed to form the dispreferred data." width="720"></a>

> Figure 4 : The proposed data synthesis pipeline, where factorized perturbation is imposed to form the dispreferred data.
> 来源：[原论文](https://arxiv.org/abs/2512.24097)

</details>

<details>
<summary><strong>3. System Combination via Quality Estimation for Grammatical Error Correction</strong> · Proceedings of the 2023 Conference on Empirical Methods in Natural Language Processing · 2023</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22System+Combination+via+Quality+Estimation+for+Grammatical+Error+Correction%22)（未缓存未经核验的数字）
- GitHub Stars：**16**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://doi.org/10.18653/v1/2023.emnlp-main.785)

**基于 Abstract 的 TL;DR**

研究人员提出了GRECO（质量估计模型），一个新型的质量估计模型，能够更好地评估语法错误校正结果的质量。通过使用GRECO，组合多个语法错误校正系统可以获得更高的F0.5分数。

</details>

</details>

<details>
<summary><img src="https://www.google.com/s2/favicons?domain_url=https%3A%2F%2Fnusail.comp.nus.edu.sg&amp;sz=128" width="32" height="32" alt="NUS AI Lab logo"> &nbsp;<strong>NUS AI Lab</strong> · <code>verified</code></summary>

<br>

NUS AI Lab 隶属于 National University of Singapore，是一支主要关注具身智能、规划与决策、多智能体系统等方向的高校实验室。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** National University of Singapore
- **主要方向：** 具身智能、规划与决策、多智能体系统、机器人
- **负责人：** [负责人/成员页](https://nusail.comp.nus.edu.sg/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://nusail.comp.nus.edu.sg/)

#### 最近工作 · 2022

<details>
<summary><strong>1. Handling Missing Values in Information Systems Research: A Review of Methods and Assumptions</strong> · Information Systems Research · 2022</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Handling+Missing+Values+in+Information+Systems+Research%3A+A+Review+of+Methods+and+Assumptions%22)（未缓存未经核验的数字）
- [论文 / 项目原始入口](https://doi.org/10.1287/isre.2022.1104)

**基于 Abstract 的 TL;DR**

研究探讨了缺失值对决策的影响，发现缺失值如果是由于非随机原因引起的，单纯增加样本大小不足以纠正偏差。该研究提出了 Monte CarloLikelihood方法来纠正偏差，并表明这种方法具有更好的性能。结果建议采取有效数据收集流程、记录可能原因、谨慎采用缺失值处理方法和结构化缺失值报告实践。

</details>

#### 代表作

<details>
<summary><strong>1. Handling Missing Values in Information Systems Research: A Review of Methods and Assumptions</strong> · Information Systems Research · 2022</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Handling+Missing+Values+in+Information+Systems+Research%3A+A+Review+of+Methods+and+Assumptions%22)（未缓存未经核验的数字）
- [论文 / 项目原始入口](https://doi.org/10.1287/isre.2022.1104)

**基于 Abstract 的 TL;DR**

研究探讨了缺失值对决策的影响，发现缺失值如果是由于非随机原因引起的，单纯增加样本大小不足以纠正偏差。该研究提出了 Monte CarloLikelihood方法来纠正偏差，并表明这种方法具有更好的性能。结果建议采取有效数据收集流程、记录可能原因、谨慎采用缺失值处理方法和结构化缺失值报告实践。

</details>

<details>
<summary><strong>2. Handling Missing Values in Information Systems Research: A...</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://nusail.comp.nus.edu.sg/integrating-deep-learning-statistical-models-and-structured-representations/index.html)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：Handling Missing Values in Information Systems Research: A... 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>3. Research track · Embodied Ai</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://nusail.comp.nus.edu.sg/)

**摘要 / 项目说明**

这是团队的官方研究入口，可继续访问其研究方向、项目或论文列表；该条目不是单篇论文，因此不展示论文引用量。

</details>

</details>

<details>
<summary><img src="https://github.com/nus-cvml.png?size=160" width="32" height="32" alt="NUS Computer Vision and Machine Learning Group logo"> &nbsp;<strong>NUS Computer Vision and Machine Learning Group</strong> · <code>provisional</code></summary>

<br>

NUS Computer Vision and Machine Learning Group 隶属于 National University of Singapore，是一支主要关注计算机视觉、机器学习、多模态学习等方向的高校研究组。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** National University of Singapore
- **主要方向：** 计算机视觉、机器学习、多模态学习、生成式 AI
- **负责人：** [负责人/成员页](https://cvml.comp.nus.edu.sg/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://cvml.comp.nus.edu.sg/) · [GitHub](https://github.com/nus-cvml)

#### 最近工作 · 2024-04-04

<details>
<summary><strong>1. A curated list of awesome temporal action segmentation resources.</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**252**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/nus-cvml/awesome-temporal-action-segmentation)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：A curated list of awesome temporal action segmentation resources. 可通过原始链接查看完整项目、论文或数据说明。

</details>

#### 代表作

<details>
<summary><strong>1. A curated list of awesome temporal action segmentation resources.</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**252**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/nus-cvml/awesome-temporal-action-segmentation)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：A curated list of awesome temporal action segmentation resources. 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>2. Research track · Computer Vision</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://cvml.comp.nus.edu.sg/)

**摘要 / 项目说明**

这是团队的官方研究入口，可继续访问其研究方向、项目或论文列表；该条目不是单篇论文，因此不展示论文引用量。

</details>

<details>
<summary><strong>3. Research track · Machine Learning</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://github.com/nus-cvml)

**摘要 / 项目说明**

这是团队的官方研究入口，可继续访问其研究方向、项目或论文列表；该条目不是单篇论文，因此不展示论文引用量。

</details>

</details>

### Nanyang Technological University（5）

<details>
<summary><img src="https://www.google.com/s2/favicons?domain_url=https%3A%2F%2Fwww.ntu.edu.sg&amp;sz=128" width="32" height="32" alt="NTU Generative AI Lab (GrAIL) logo"> &nbsp;<strong>NTU Generative AI Lab (GrAIL)</strong> · <code>verified</code></summary>

<br>

NTU Generative AI Lab (GrAIL) 隶属于 Nanyang Technological University，是一支主要关注生成式 AI、多模态学习、计算机视觉等方向的高校实验室。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** Nanyang Technological University
- **主要方向：** 生成式 AI、多模态学习、计算机视觉、AI for Science
- **负责人：** [负责人/成员页](https://www.ntu.edu.sg/computing/research/institutes-centres/grail) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://www.ntu.edu.sg/computing/research/institutes-centres/grail)

#### 最近工作 · 日期待核验

<details>
<summary><strong>1. Emeritus Professorship</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://www.ntu.edu.sg/computing/about-us/emeritus-professorship)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：Emeritus Professorship 可通过原始链接查看完整项目、论文或数据说明。

</details>

#### 代表作

<details>
<summary><strong>1. Emeritus Professorship</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://www.ntu.edu.sg/computing/about-us/emeritus-professorship)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：Emeritus Professorship 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>2. Our Distinctive Edge</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://www.ntu.edu.sg/computing/about-us/our-distinctive-edge)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：Our Distinctive Edge 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>3. Show me more results &gt;</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://www.ntu.edu.sg/search-results?q={{=%20it.term}})

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：Show me more results &gt; 可通过原始链接查看完整项目、论文或数据说明。

</details>

</details>

<details>
<summary><img src="https://www.google.com/s2/favicons?domain_url=https%3A%2F%2Fwww.mmlab-ntu.com&amp;sz=128" width="32" height="32" alt="MMLab@NTU logo"> &nbsp;<strong>MMLab@NTU</strong> · <code>verified</code></summary>

<br>

MMLab@NTU 隶属于 Nanyang Technological University，是一支主要关注计算机视觉、多模态学习、生成式 AI等方向的高校实验室。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** Nanyang Technological University
- **主要方向：** 计算机视觉、多模态学习、生成式 AI、具身智能
- **负责人：** [负责人/成员页](https://www.mmlab-ntu.com/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://www.mmlab-ntu.com/)

#### 最近工作 · 日期待核验

<details>
<summary><strong>1. CVPR 2026 GigaBrain Workshop</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://gigaai-research.github.io/GigaBrain-Challenge-2026/)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：CVPR 2026 GigaBrain Workshop 可通过原始链接查看完整项目、论文或数据说明。

</details>

#### 代表作

<details>
<summary><strong>1. CVPR 2026 GigaBrain Workshop</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://gigaai-research.github.io/GigaBrain-Challenge-2026/)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：CVPR 2026 GigaBrain Workshop 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>2. EgoVis 2024/2025 Distinguished Paper Award</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://egovis.github.io/awards/2024_2025/)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：EgoVis 2024/2025 Distinguished Paper Award 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>3. 2025 Apple Scholar in AIML</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://machinelearning.apple.com/updates/apple-scholars-aiml-2025)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：2025 Apple Scholar in AIML 可通过原始链接查看完整项目、论文或数据说明。

</details>

</details>

<details>
<summary><img src="https://github.com/ntunlpsg.png?size=160" width="32" height="32" alt="NTU Natural Language Processing Group logo"> &nbsp;<strong>NTU Natural Language Processing Group</strong> · <code>verified</code></summary>

<br>

NTU Natural Language Processing Group 隶属于 Nanyang Technological University，是一支主要关注自然语言处理、多语言 AI、多模态学习等方向的高校研究组。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** Nanyang Technological University
- **主要方向：** 自然语言处理、多语言 AI、多模态学习、医疗自然语言处理
- **负责人：** [负责人/成员页](https://ntunlpsg.github.io/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://ntunlpsg.github.io/) · [GitHub](https://github.com/ntunlpsg)

#### 最近工作 · 日期待核验

<details>
<summary><strong>1. Research track · Natural Language Processing</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://ntunlpsg.github.io/)

**摘要 / 项目说明**

这是团队的官方研究入口，可继续访问其研究方向、项目或论文列表；该条目不是单篇论文，因此不展示论文引用量。

</details>

#### 代表作

<details>
<summary><strong>1. Research track · Natural Language Processing</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://ntunlpsg.github.io/)

**摘要 / 项目说明**

这是团队的官方研究入口，可继续访问其研究方向、项目或论文列表；该条目不是单篇论文，因此不展示论文引用量。

</details>

<details>
<summary><strong>2. Research track · Multilingual Ai</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://github.com/ntunlpsg)

**摘要 / 项目说明**

这是团队的官方研究入口，可继续访问其研究方向、项目或论文列表；该条目不是单篇论文，因此不展示论文引用量。

</details>

<details>
<summary><strong>3. Research track · Multimodal</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://ntunlpsg.github.io/)

**摘要 / 项目说明**

这是团队的官方研究入口，可继续访问其研究方向、项目或论文列表；该条目不是单篇论文，因此不展示论文引用量。

</details>

</details>

<details>
<summary><img src="https://github.com/declare-lab.png?size=160" width="32" height="32" alt="NTU Deep Cognition and Language Research Lab (DeCLaRe) logo"> &nbsp;<strong>NTU Deep Cognition and Language Research Lab (DeCLaRe)</strong> · <code>verified</code></summary>

<br>

NTU Deep Cognition and Language Research Lab (DeCLaRe) 隶属于 Nanyang Technological University，是一支主要关注AI 安全与对齐、可信 AI、多模态学习等方向的高校实验室。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** Nanyang Technological University
- **主要方向：** AI 安全与对齐、可信 AI、多模态学习、具身智能
- **负责人：** [负责人/成员页](https://declare-lab.github.io/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://declare-lab.github.io/) · [GitHub](https://github.com/declare-lab)

#### 最近工作 · 2024

<details>
<summary><strong>1. TangoFlux: Super Fast and Faithful Text to Audio Generation with Flow Matching and Clap-Ranked Preference Optimization</strong> · arXiv (Cornell University) · 2024</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22TangoFlux%3A+Super+Fast+and+Faithful+Text+to+Audio+Generation+with+Flow+Matching+and+Clap-Ranked+Preference+Optimization%22)（未缓存未经核验的数字）
- GitHub Stars：**878**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2412.21037)

**基于 Abstract 的 TL;DR**

研究者提出了一种称为TangoFlux的高效的文本到音频（TTA）生成模型，能够在3.7秒内使用单个GPU生成30秒的44.1kHz音频。该模型通过一种名为CRPO的框架来优化偏好数据，从而改善TTA对齐。研究结果表明TangoFlux在多种评估标准下达到了先进水平。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2412.21037"><img src="https://ar5iv.labs.arxiv.org/html/2412.21037/assets/x2.png" alt="Figure 1: A depiction of the overall training pipeline of T a n g o F l u x ." width="720"></a>

> Figure 1: A depiction of the overall training pipeline of T a n g o F l u x .
> 来源：[原论文](https://arxiv.org/abs/2412.21037)

</details>

#### 代表作

<details>
<summary><strong>1. TangoFlux: Super Fast and Faithful Text to Audio Generation with Flow Matching and Clap-Ranked Preference Optimization</strong> · arXiv (Cornell University) · 2024</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22TangoFlux%3A+Super+Fast+and+Faithful+Text+to+Audio+Generation+with+Flow+Matching+and+Clap-Ranked+Preference+Optimization%22)（未缓存未经核验的数字）
- GitHub Stars：**878**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2412.21037)

**基于 Abstract 的 TL;DR**

研究者提出了一种称为TangoFlux的高效的文本到音频（TTA）生成模型，能够在3.7秒内使用单个GPU生成30秒的44.1kHz音频。该模型通过一种名为CRPO的框架来优化偏好数据，从而改善TTA对齐。研究结果表明TangoFlux在多种评估标准下达到了先进水平。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2412.21037"><img src="https://ar5iv.labs.arxiv.org/html/2412.21037/assets/x2.png" alt="Figure 1: A depiction of the overall training pipeline of T a n g o F l u x ." width="720"></a>

> Figure 1: A depiction of the overall training pipeline of T a n g o F l u x .
> 来源：[原论文](https://arxiv.org/abs/2412.21037)

</details>

<details>
<summary><strong>2. Self-Adaptive Sampling for Efficient Video Question-Answering on Image--Text Models</strong> · arXiv (Cornell University) · 2023</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Self-Adaptive+Sampling+for+Efficient+Video+Question-Answering+on+Image--Text+Models%22)（未缓存未经核验的数字）
- GitHub Stars：**12**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2307.04192)

**基于 Abstract 的 TL;DR**

研究者提出了两个frame采样策略，MDF和MIF，以优化video question-answering模型的性能。这些策略通过最大限度地保留关键帧来减少关键帧 omission的风险，并且在实验中证明了其有效性。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2307.04192"><img src="https://ar5iv.labs.arxiv.org/html/2307.04192/assets/x7.png" alt="Figure 4 . MIF workflow. Here we just show an example of how it selects one frame out of two frames." width="720"></a>

> Figure 4 . MIF workflow. Here we just show an example of how it selects one frame out of two frames.
> 来源：[原论文](https://arxiv.org/abs/2307.04192)

</details>

<details>
<summary><strong>3. [ICLR 2026] OffTopicEval: When Large Language Models Enter the Wrong Chat, Almost Always!</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**10**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/declare-lab/OffTopicEval)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：[ICLR 2026] OffTopicEval: When Large Language Models Enter the Wrong Chat, Almost Always! 可通过原始链接查看完整项目、论文或数据说明。

</details>

</details>

<details>
<summary><img src="https://www.google.com/s2/favicons?domain_url=https%3A%2F%2Fwww.ntu.edu.sg&amp;sz=128" width="32" height="32" alt="NTU S-Lab for Advanced Intelligence logo"> &nbsp;<strong>NTU S-Lab for Advanced Intelligence</strong> · <code>verified</code></summary>

<br>

NTU S-Lab for Advanced Intelligence 隶属于 Nanyang Technological University，是一支主要关注计算机视觉、自然语言处理、强化学习等方向的高校实验室。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** Nanyang Technological University
- **主要方向：** 计算机视觉、自然语言处理、强化学习、分布式智能
- **负责人：** [负责人/成员页](https://www.ntu.edu.sg/s-lab) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://www.ntu.edu.sg/s-lab)

#### 最近工作 · 日期待核验

<details>
<summary><strong>1. Show me more results &gt;</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://www.ntu.edu.sg/search-results?q={{=%20it.term}})

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：Show me more results &gt; 可通过原始链接查看完整项目、论文或数据说明。

</details>

#### 代表作

<details>
<summary><strong>1. Show me more results &gt;</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://www.ntu.edu.sg/search-results?q={{=%20it.term}})

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：Show me more results &gt; 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>2. Equality, Diversity and Inclusion</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://www.ntu.edu.sg/about-us#edi-policy)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：Equality, Diversity and Inclusion 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>3. S-Lab for Advanced Intelligence</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://www.ntu.edu.sg/s-lab)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：S-Lab for Advanced Intelligence 可通过原始链接查看完整项目、论文或数据说明。

</details>

</details>

## 美国 AI 核心高校

### Carnegie Mellon University（5）

<details>
<summary><img src="https://www.google.com/s2/favicons?domain_url=https%3A%2F%2Fwww.lti.cs.cmu.edu&amp;sz=128" width="32" height="32" alt="CMU Language Technologies Institute (LTI) logo"> &nbsp;<strong>CMU Language Technologies Institute (LTI)</strong> · <code>verified</code></summary>

<br>

CMU Language Technologies Institute (LTI) 隶属于 Carnegie Mellon University，是一支主要关注自然语言处理、语音技术、信息检索等方向的高校研究院。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** Carnegie Mellon University
- **主要方向：** 自然语言处理、语音技术、信息检索、大语言模型
- **负责人：** [负责人/成员页](https://www.lti.cs.cmu.edu/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://www.lti.cs.cmu.edu/)

#### 最近工作 · 日期待核验

<details>
<summary><strong>1. Carnegie Mellon University</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://www.cmu.edu/)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：Carnegie Mellon University 可通过原始链接查看完整项目、论文或数据说明。

</details>

#### 代表作

<details>
<summary><strong>1. Carnegie Mellon University</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://www.cmu.edu/)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：Carnegie Mellon University 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>2. Language Technologies Institute</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://www.lti.cs.cmu.edu/index.html)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：Language Technologies Institute 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>3. School of Computer Science</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://www.cs.cmu.edu/)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：School of Computer Science 可通过原始链接查看完整项目、论文或数据说明。

</details>

</details>

<details>
<summary><img src="https://github.com/cmu-mlsp.png?size=160" width="32" height="32" alt="CMU Machine Learning Department logo"> &nbsp;<strong>CMU Machine Learning Department</strong> · <code>verified</code></summary>

<br>

CMU Machine Learning Department 隶属于 Carnegie Mellon University，是一支主要关注机器学习、统计学习、强化学习等方向的高校研究院系。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** Carnegie Mellon University
- **主要方向：** 机器学习、统计学习、强化学习、AI for Science
- **负责人：** [负责人/成员页](https://www.ml.cmu.edu/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://www.ml.cmu.edu/) · [GitHub](https://github.com/cmu-mlsp)

#### 最近工作 · 2024

<details>
<summary><strong>1. Speech vs. Transcript: Does It Matter for Human Annotators in Speech Summarization?</strong> · Proceedings of the 62nd Annual Meeting of the Association for Computational Linguistics (Volume 1: Long Papers) · 2024</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Speech+vs.+Transcript%3A+Does+It+Matter+for+Human+Annotators+in+Speech+Summarization%3F%22)（未缓存未经核验的数字）
- GitHub Stars：**4**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://doi.org/10.18653/v1/2024.acl-long.790)

**摘要 / 项目说明**

已匹配论文《Speech vs. Transcript: Does It Matter for Human Annotators in Speech Summarization?》，但开放元数据暂未提供 Abstract；请通过论文原文查看方法与结论。

</details>

#### 代表作

<details>
<summary><strong>1. Speech vs. Transcript: Does It Matter for Human Annotators in Speech Summarization?</strong> · Proceedings of the 62nd Annual Meeting of the Association for Computational Linguistics (Volume 1: Long Papers) · 2024</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Speech+vs.+Transcript%3A+Does+It+Matter+for+Human+Annotators+in+Speech+Summarization%3F%22)（未缓存未经核验的数字）
- GitHub Stars：**4**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://doi.org/10.18653/v1/2024.acl-long.790)

**摘要 / 项目说明**

已匹配论文《Speech vs. Transcript: Does It Matter for Human Annotators in Speech Summarization?》，但开放元数据暂未提供 Abstract；请通过论文原文查看方法与结论。

</details>

<details>
<summary><strong>2. Machine Learning for Signal Processing</strong> · Neurocomputing · 2008</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Machine+Learning+for+Signal+Processing%22)（未缓存未经核验的数字）
- GitHub Stars：**1**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://doi.org/10.1016/j.neucom.2008.08.004)

**摘要 / 项目说明**

已匹配论文《Machine Learning for Signal Processing》，但开放元数据暂未提供 Abstract；请通过论文原文查看方法与结论。

</details>

<details>
<summary><strong>3. [Interspeech 2022] Tutorial - Learning from Weak Labels</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**9**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/cmu-mlsp/learning_from_weak_labels)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：[Interspeech 2022] Tutorial - Learning from Weak Labels 可通过原始链接查看完整项目、论文或数据说明。

</details>

</details>

<details>
<summary><img src="https://github.com/cmu-robotics.png?size=160" width="32" height="32" alt="CMU Robotics Institute logo"> &nbsp;<strong>CMU Robotics Institute</strong> · <code>verified</code></summary>

<br>

CMU Robotics Institute 隶属于 Carnegie Mellon University，是一支主要关注机器人、具身智能、计算机视觉等方向的高校研究院。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** Carnegie Mellon University
- **主要方向：** 机器人、具身智能、计算机视觉、自主系统
- **负责人：** [负责人/成员页](https://www.ri.cmu.edu/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://www.ri.cmu.edu/) · [GitHub](https://github.com/cmu-robotics)

#### 最近工作 · 日期待核验

<details>
<summary><strong>1. What needs to be learned in robot learning? A case study: learning battery insertion from a diagram</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://www.ri.cmu.edu/)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：What needs to be learned in robot learning? A case study: learning battery insertion from a diagram 可通过原始链接查看完整项目、论文或数据说明。

</details>

#### 代表作

<details>
<summary><strong>1. What needs to be learned in robot learning? A case study: learning battery insertion from a diagram</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://www.ri.cmu.edu/)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：What needs to be learned in robot learning? A case study: learning battery insertion from a diagram 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>2. Harnessing AI to Find Critical Minerals</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://www.ri.cmu.edu/harnessing-ai-to-find-critical-minerals/)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：Harnessing AI to Find Critical Minerals 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>3. Healthcare Blind Spots: AI Models Prone To Fabricating Diagnoses</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://www.ri.cmu.edu/healthcare-blind-spots-ai-models-prone-to-fabricating-diagnoses/)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：Healthcare Blind Spots: AI Models Prone To Fabricating Diagnoses 可通过原始链接查看完整项目、论文或数据说明。

</details>

</details>

<details>
<summary><img src="https://github.com/autonlab.png?size=160" width="32" height="32" alt="CMU Auton Lab logo"> &nbsp;<strong>CMU Auton Lab</strong> · <code>verified</code></summary>

<br>

CMU Auton Lab 隶属于 Carnegie Mellon University，是一支主要关注机器学习、数据挖掘、自主科学发现等方向的高校实验室。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** Carnegie Mellon University
- **主要方向：** 机器学习、数据挖掘、自主科学发现、AI for Science
- **负责人：** [负责人/成员页](https://www.autonlab.org/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://www.autonlab.org/) · [GitHub](https://github.com/autonlab)

#### 最近工作 · 2025

<details>
<summary><strong>2. STAMP: Spatial-Temporal Adapter with Multi-Head Pooling</strong> · arXiv (Cornell University) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22STAMP%3A+Spatial-Temporal+Adapter+with+Multi-Head+Pooling%22)（未缓存未经核验的数字）
- GitHub Stars：**6**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2511.10848)

**基于 Abstract 的 TL;DR**

研究者开发了一个适应于电生理数据的新模型，称为STAMP（空间-时间适配器多头池化），它利用一般TSFM生成的单变量嵌入隐式地模拟了EEG数据的空间-时间特征。该模型在8个临床任务的benchmark数据上表现出相当的性能，与现有最好的EEGFMs相比。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2511.10848"><img src="https://ar5iv.labs.arxiv.org/html/2511.10848/assets/images/adapter.png" alt="Figure 1: A diagram showing how EEG data is processed by MOMENT and STAMP. The EEG data is separated into tokens, which are embedded using MOMENT before positional encoding is applied. The resulting tokens are passed through the CC-GMLP, where spatial and temporal relationships are incorporated into embeddings. MHAP then determines relevant features and generates final predictions by projecting embeddings into lower dimensional spaces." width="720"></a>

> Figure 1: A diagram showing how EEG data is processed by MOMENT and STAMP. The EEG data is separated into tokens, which are embedded using MOMENT before positional encoding is applied. The resulting tokens are passed through the CC-GMLP, where spatial and temporal relationships are incorporated into embeddings. MHAP then determines relevant features and generates final predictions by projecting embeddings into lower dimensional spaces.
> 来源：[原论文](https://arxiv.org/abs/2511.10848)

</details>

#### 代表作

<details>
<summary><strong>1. auton-survival: an Open-Source Package for Regression, Counterfactual Estimation, Evaluation and Phenotyping with Censored Time-to-Event Data</strong> · arXiv (Cornell University) · 2022</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22auton-survival%3A+an+Open-Source+Package+for+Regression%2C+Counterfactual+Estimation%2C+Evaluation+and+Phenotyping+with+Censored+Time-to-Event+Data%22)（未缓存未经核验的数字）
- GitHub Stars：**370**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2204.07276)

**基于 Abstract 的 TL;DR**

研究问题是机器学习在医疗领域中处理时间到事件预测任务的挑战，特别是在面对缺失跟进数据的情况下。该论文提出了一种名为auton-survival的开源工具集，可以简化处理有缺失数据的时间到事件或生存数据。通过实用案例研究，auton-survival能够帮助数据科学家快速回答复杂的健康和流行病学问题。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2204.07276"><img src="https://ar5iv.labs.arxiv.org/html/2204.07276/assets/x8.png" alt="(b) The phenotype Z 𝑍 Z effects the outcome, hence T ⟂̸ Z | X not-perpendicular-to 𝑇 conditional 𝑍 𝑋 T\not\perp Z|X . In this case, inference for Z 𝑍 Z requires knowledge of the distribution of time-to-events T 𝑇 T ." width="720"></a>

> (b) The phenotype Z 𝑍 Z effects the outcome, hence T ⟂̸ Z | X not-perpendicular-to 𝑇 conditional 𝑍 𝑋 T\not\perp Z|X . In this case, inference for Z 𝑍 Z requires knowledge of the distribution of time-to-events T 𝑇 T .
> 来源：[原论文](https://arxiv.org/abs/2204.07276)

</details>

<details>
<summary><strong>2. STAMP: Spatial-Temporal Adapter with Multi-Head Pooling</strong> · arXiv (Cornell University) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22STAMP%3A+Spatial-Temporal+Adapter+with+Multi-Head+Pooling%22)（未缓存未经核验的数字）
- GitHub Stars：**6**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2511.10848)

**基于 Abstract 的 TL;DR**

研究者开发了一个适应于电生理数据的新模型，称为STAMP（空间-时间适配器多头池化），它利用一般TSFM生成的单变量嵌入隐式地模拟了EEG数据的空间-时间特征。该模型在8个临床任务的benchmark数据上表现出相当的性能，与现有最好的EEGFMs相比。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2511.10848"><img src="https://ar5iv.labs.arxiv.org/html/2511.10848/assets/images/adapter.png" alt="Figure 1: A diagram showing how EEG data is processed by MOMENT and STAMP. The EEG data is separated into tokens, which are embedded using MOMENT before positional encoding is applied. The resulting tokens are passed through the CC-GMLP, where spatial and temporal relationships are incorporated into embeddings. MHAP then determines relevant features and generates final predictions by projecting embeddings into lower dimensional spaces." width="720"></a>

> Figure 1: A diagram showing how EEG data is processed by MOMENT and STAMP. The EEG data is separated into tokens, which are embedded using MOMENT before positional encoding is applied. The resulting tokens are passed through the CC-GMLP, where spatial and temporal relationships are incorporated into embeddings. MHAP then determines relevant features and generates final predictions by projecting embeddings into lower dimensional spaces.
> 来源：[原论文](https://arxiv.org/abs/2511.10848)

</details>

<details>
<summary><strong>3. Code repo for Neurips paper Improving Model-Based Reinforcement Learning by Converging to Flatter Minimas</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**1**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/autonlab/MBRL-flat-minima)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：Code repo for Neurips paper Improving Model-Based Reinforcement Learning by Converging to Flatter Minimas 可通过原始链接查看完整项目、论文或数据说明。

</details>

</details>

<details>
<summary><img src="https://www.google.com/s2/favicons?domain_url=https%3A%2F%2Fwww.ri.cmu.edu&amp;sz=128" width="32" height="32" alt="CMU Generative Intelligence Lab logo"> &nbsp;<strong>CMU Generative Intelligence Lab</strong> · <code>provisional</code></summary>

<br>

CMU Generative Intelligence Lab 隶属于 Carnegie Mellon University，是一支主要关注生成式 AI、计算机视觉、人机协作等方向的高校实验室。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** Carnegie Mellon University
- **主要方向：** 生成式 AI、计算机视觉、人机协作、机器人
- **负责人：** [负责人/成员页](https://www.ri.cmu.edu/robotics-groups/generative-intelligence-lab/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://www.ri.cmu.edu/robotics-groups/generative-intelligence-lab/)

#### 最近工作 · 日期待核验

<details>
<summary><strong>1. Supported Browsers</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://www.ri.cmu.edu/supported-browsers/)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：Supported Browsers 可通过原始链接查看完整项目、论文或数据说明。

</details>

#### 代表作

<details>
<summary><strong>1. Supported Browsers</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://www.ri.cmu.edu/supported-browsers/)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：Supported Browsers 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>2. History of the Robotics Institute</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://www.ri.cmu.edu/about/ri-history/)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：History of the Robotics Institute 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>3. Maps, Directions &amp; Parking</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://www.ri.cmu.edu/about/maps-directions/)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：Maps, Directions &amp; Parking 可通过原始链接查看完整项目、论文或数据说明。

</details>

</details>

### Massachusetts Institute of Technology（4）

<details>
<summary><img src="https://www.google.com/s2/favicons?domain_url=https%3A%2F%2Fwww.csail.mit.edu&amp;sz=128" width="32" height="32" alt="MIT Computer Science and Artificial Intelligence Laboratory (CSAIL) logo"> &nbsp;<strong>MIT Computer Science and Artificial Intelligence Laboratory (CSAIL)</strong> · <code>verified</code></summary>

<br>

MIT Computer Science and Artificial Intelligence Laboratory (CSAIL) 隶属于 Massachusetts Institute of Technology，是一支主要关注机器学习、自然语言处理、计算机视觉等方向的高校研究院。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** Massachusetts Institute of Technology
- **主要方向：** 机器学习、自然语言处理、计算机视觉、机器人
- **负责人：** [Daniela Rus](https://www.csail.mit.edu/person/daniela-rus)（Director）
- **官方入口：** [官网](https://www.csail.mit.edu/)

#### 最近工作 · 日期待核验

<details>
<summary><strong>1. LLMs help robots understand vague instructions and focus on key details</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://www.csail.mit.edu/news/llms-help-robots-understand-vague-instructions-and-focus-key-details)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：LLMs help robots understand vague instructions and focus on key details 可通过原始链接查看完整项目、论文或数据说明。

</details>

#### 代表作

<details>
<summary><strong>1. LLMs help robots understand vague instructions and focus on key details</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://www.csail.mit.edu/news/llms-help-robots-understand-vague-instructions-and-focus-key-details)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：LLMs help robots understand vague instructions and focus on key details 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>2. AI agents create virtual playgrounds to help robots get crucial training data</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://www.csail.mit.edu/news/ai-agents-create-virtual-playgrounds-help-robots-get-crucial-training-data)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：AI agents create virtual playgrounds to help robots get crucial training data 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>3. Motion tracking system shows robots the path most traveled by, keeping them on task</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://www.csail.mit.edu/news/motion-tracking-system-shows-robots-path-most-traveled-keeping-them-task)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：Motion tracking system shows robots the path most traveled by, keeping them on task 可通过原始链接查看完整项目、论文或数据说明。

</details>

</details>

<details>
<summary><img src="https://github.com/CBMM.png?size=160" width="32" height="32" alt="MIT Center for Brains, Minds and Machines (CBMM) logo"> &nbsp;<strong>MIT Center for Brains, Minds and Machines (CBMM)</strong> · <code>provisional</code></summary>

<br>

MIT Center for Brains, Minds and Machines (CBMM) 隶属于 Massachusetts Institute of Technology，是一支主要关注学习理论、计算神经科学、计算机视觉等方向的高校研究中心。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** Massachusetts Institute of Technology
- **主要方向：** 学习理论、计算神经科学、计算机视觉、认知智能
- **负责人：** [Tomaso Poggio](https://cbmm.mit.edu/about/people/poggio)（Co-Director）
- **官方入口：** [官网](https://cbmm.mit.edu/) · [GitHub](https://github.com/CBMM)

#### 最近工作 · 日期待核验

<details>
<summary><strong>1. Modeling Human Goal Inference as Inverse Planning in Real Scenes</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://cbmm.mit.edu/research/cbmm-alumni-seed-grants/modeling-human-goal-inference-inverse-planning-real-scenes)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：Modeling Human Goal Inference as Inverse Planning in Real Scenes 可通过原始链接查看完整项目、论文或数据说明。

</details>

#### 代表作

<details>
<summary><strong>1. Modeling Human Goal Inference as Inverse Planning in Real Scenes</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://cbmm.mit.edu/research/cbmm-alumni-seed-grants/modeling-human-goal-inference-inverse-planning-real-scenes)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：Modeling Human Goal Inference as Inverse Planning in Real Scenes 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>2. Computational Models of Human Social Interaction Perception</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://cbmm.mit.edu/research/cbmm-alumni-seed-grants/computational-models-human-social-interaction-perception)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：Computational Models of Human Social Interaction Perception 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>3. Invariance in Visual Cortex Neurons as Defined Through Deep Generative Networks</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://cbmm.mit.edu/research/cbmm-alumni-seed-grants/invariance-visual-cortex-neurons-defined-through-deep-generative)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：Invariance in Visual Cortex Neurons as Defined Through Deep Generative Networks 可通过原始链接查看完整项目、论文或数据说明。

</details>

</details>

<details>
<summary><img src="https://github.com/Improbable-AI.png?size=160" width="32" height="32" alt="MIT Improbable AI Lab logo"> &nbsp;<strong>MIT Improbable AI Lab</strong> · <code>verified</code></summary>

<br>

MIT Improbable AI Lab 隶属于 Massachusetts Institute of Technology，是一支主要关注机器人、具身智能、强化学习等方向的高校实验室。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** Massachusetts Institute of Technology
- **主要方向：** 机器人、具身智能、强化学习、机器人运动
- **负责人：** [负责人/成员页](https://improbable-ai.github.io/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://improbable-ai.github.io/) · [GitHub](https://github.com/Improbable-AI)

#### 最近工作 · 2023

<details>
<summary><strong>2. Beyond Uniform Sampling: Offline Reinforcement Learning with Imbalanced Datasets</strong> · arXiv (Cornell University) · 2023</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Beyond+Uniform+Sampling%3A+Offline+Reinforcement+Learning+with+Imbalanced+Datasets%22)（未缓存未经核验的数字）
- GitHub Stars：**25**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2310.04413)

**基于 Abstract 的 TL;DR**

该研究探讨了离线政策学习的局限性，发现当数据中主要由低效率轨迹组成时，现有的离线RL算法难以超越原始轨迹的平均回报。该工作提出了一个采样策略，使得政策仅受“好数据”的约束，而不是整个数据集。这一改进在72个不平衡数据集、D4RL数据集和三个不同离线RL算法上表现出显著的性能提高。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2310.04413"><img src="https://ar5iv.labs.arxiv.org/html/2310.04413/assets/x2.png" alt="Figure 2 : Return distribution of datasets with high and low RPSV. Low RPSV datasets have returns centered at the mean, while high RPSV datasets have a wider distribution extending towards higher returns. See Appendix  A.4 for details." width="720"></a>

> Figure 2 : Return distribution of datasets with high and low RPSV. Low RPSV datasets have returns centered at the mean, while high RPSV datasets have a wider distribution extending towards higher returns. See Appendix  A.4 for details.
> 来源：[原论文](https://arxiv.org/abs/2310.04413)

</details>

#### 代表作

<details>
<summary><strong>1. Official implementation of ICLR&#39;24 paper, &quot;Curiosity-driven Red Teaming for Large Language Models&quot; (https://openreview.net/pdf?id=4KqkizXgXU)</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**90**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/Improbable-AI/curiosity_redteam)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：Official implementation of ICLR&#39;24 paper, &quot;Curiosity-driven Red Teaming for Large Language Models&quot; (https://openreview.net/pdf?id=4KqkizXgXU) 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>2. Beyond Uniform Sampling: Offline Reinforcement Learning with Imbalanced Datasets</strong> · arXiv (Cornell University) · 2023</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Beyond+Uniform+Sampling%3A+Offline+Reinforcement+Learning+with+Imbalanced+Datasets%22)（未缓存未经核验的数字）
- GitHub Stars：**25**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2310.04413)

**基于 Abstract 的 TL;DR**

该研究探讨了离线政策学习的局限性，发现当数据中主要由低效率轨迹组成时，现有的离线RL算法难以超越原始轨迹的平均回报。该工作提出了一个采样策略，使得政策仅受“好数据”的约束，而不是整个数据集。这一改进在72个不平衡数据集、D4RL数据集和三个不同离线RL算法上表现出显著的性能提高。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2310.04413"><img src="https://ar5iv.labs.arxiv.org/html/2310.04413/assets/x2.png" alt="Figure 2 : Return distribution of datasets with high and low RPSV. Low RPSV datasets have returns centered at the mean, while high RPSV datasets have a wider distribution extending towards higher returns. See Appendix  A.4 for details." width="720"></a>

> Figure 2 : Return distribution of datasets with high and low RPSV. Low RPSV datasets have returns centered at the mean, while high RPSV datasets have a wider distribution extending towards higher returns. See Appendix  A.4 for details.
> 来源：[原论文](https://arxiv.org/abs/2310.04413)

</details>

<details>
<summary><strong>3. Sim-to-real RL training and deployment tools for the Unitree Go1 robot.</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**1426**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/Improbable-AI/walk-these-ways)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：Sim-to-real RL training and deployment tools for the Unitree Go1 robot. 可通过原始链接查看完整项目、论文或数据说明。

</details>

</details>

<details>
<summary><img src="https://www.google.com/s2/favicons?domain_url=https%3A%2F%2Fei.csail.mit.edu&amp;sz=128" width="32" height="32" alt="MIT Embodied Intelligence Group logo"> &nbsp;<strong>MIT Embodied Intelligence Group</strong> · <code>provisional</code></summary>

<br>

MIT Embodied Intelligence Group 隶属于 Massachusetts Institute of Technology，是一支主要关注具身智能、机器人、计算机视觉等方向的高校研究组。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** Massachusetts Institute of Technology
- **主要方向：** 具身智能、机器人、计算机视觉、表征学习
- **负责人：** [负责人/成员页](https://ei.csail.mit.edu/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://ei.csail.mit.edu/)

#### 最近工作 · 2022

<details>
<summary><strong>3. Long-Horizon Manipulation of Unknown Objects via Task and Motion Planning with Estimated Affordances</strong> · 2022 International Conference on Robotics and Automation (ICRA) · 2022</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Long-Horizon+Manipulation+of+Unknown+Objects+via+Task+and+Motion+Planning+with+Estimated+Affordances%22)（未缓存未经核验的数字）
- [论文 / 项目原始入口](https://doi.org/10.1109/icra46639.2022.9812057)

**基于 Abstract 的 TL;DR**

该研究提出一种设计和构建广泛适用机器人操纵系统的策略，使用任务和运动规划器结合工程化和学习模块来估计未知物体的属性和 affordances。该策略使得机器人在没有先验知识的情况下表现出智能行为，并且可以 flexibly 组合 robot-centric primitives 使用 PDDLStream 框架。

</details>

#### 代表作

<details>
<summary><strong>1. Emergent Discrete Communication in Semantic Spaces</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://arxiv.org/abs/2108.01828)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：Emergent Discrete Communication in Semantic Spaces 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>2. Learning to See by Looking at Noise</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://arxiv.org/abs/2106.05963)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：Learning to See by Looking at Noise 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>3. Long-Horizon Manipulation of Unknown Objects via Task and Motion Planning with Estimated Affordances</strong> · 2022 International Conference on Robotics and Automation (ICRA) · 2022</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Long-Horizon+Manipulation+of+Unknown+Objects+via+Task+and+Motion+Planning+with+Estimated+Affordances%22)（未缓存未经核验的数字）
- [论文 / 项目原始入口](https://doi.org/10.1109/icra46639.2022.9812057)

**基于 Abstract 的 TL;DR**

该研究提出一种设计和构建广泛适用机器人操纵系统的策略，使用任务和运动规划器结合工程化和学习模块来估计未知物体的属性和 affordances。该策略使得机器人在没有先验知识的情况下表现出智能行为，并且可以 flexibly 组合 robot-centric primitives 使用 PDDLStream 框架。

</details>

</details>

### Stanford University（5）

<details>
<summary><img src="https://github.com/stanfordai.png?size=160" width="32" height="32" alt="Stanford Artificial Intelligence Laboratory (SAIL) logo"> &nbsp;<strong>Stanford Artificial Intelligence Laboratory (SAIL)</strong> · <code>verified</code></summary>

<br>

Stanford Artificial Intelligence Laboratory (SAIL) 隶属于 Stanford University，是一支主要关注机器学习、自然语言处理、计算机视觉等方向的高校研究院。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** Stanford University
- **主要方向：** 机器学习、自然语言处理、计算机视觉、机器人
- **负责人：** [负责人/成员页](https://ai.stanford.edu/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://ai.stanford.edu/) · [GitHub](https://github.com/stanfordai)

#### 最近工作 · 日期待核验

<details>
<summary><strong>1. Research track · Machine Learning</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://ai.stanford.edu/)

**摘要 / 项目说明**

这是团队的官方研究入口，可继续访问其研究方向、项目或论文列表；该条目不是单篇论文，因此不展示论文引用量。

</details>

#### 代表作

<details>
<summary><strong>1. Research track · Machine Learning</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://ai.stanford.edu/)

**摘要 / 项目说明**

这是团队的官方研究入口，可继续访问其研究方向、项目或论文列表；该条目不是单篇论文，因此不展示论文引用量。

</details>

<details>
<summary><strong>2. Research track · Natural Language Processing</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://github.com/stanfordai)

**摘要 / 项目说明**

这是团队的官方研究入口，可继续访问其研究方向、项目或论文列表；该条目不是单篇论文，因此不展示论文引用量。

</details>

<details>
<summary><strong>3. Research track · Computer Vision</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://ai.stanford.edu/research-groups/)

**摘要 / 项目说明**

这是团队的官方研究入口，可继续访问其研究方向、项目或论文列表；该条目不是单篇论文，因此不展示论文引用量。

</details>

</details>

<details>
<summary><img src="https://github.com/stanford-crfm.png?size=160" width="32" height="32" alt="Stanford Center for Research on Foundation Models (CRFM) logo"> &nbsp;<strong>Stanford Center for Research on Foundation Models (CRFM)</strong> · <code>verified</code></summary>

<br>

Stanford Center for Research on Foundation Models (CRFM) 隶属于 Stanford University，是一支主要关注基础模型、模型评估、AI 透明度等方向的高校研究中心。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** Stanford University
- **主要方向：** 基础模型、模型评估、AI 透明度、负责任 AI
- **负责人：** [Percy Liang](https://cs.stanford.edu/~pliang/)（Director）
- **官方入口：** [官网](https://crfm.stanford.edu/) · [GitHub](https://github.com/stanford-crfm)

#### 最近工作 · 2026-07-01

<details>
<summary><strong>2. Holistic Evaluation of Language Models (HELM) is an open source Python framework created by the Center for Research on Foundation Models (CRFM) at Stanford for holistic, reproducible and transparent evaluation of foundation models, including large language models (LLMs) and multimodal models.</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**2864**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/stanford-crfm/helm)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：Holistic Evaluation of Language Models (HELM) is an open source Python framework created by the Center for Research on Foundation Models (CRFM) at Stanford for holistic, reproducible and transparent evaluation of foundation models, including large language models (LLMs) and multimodal models. 可通过原始链接查看完整项目、论文或数据说明。

</details>

#### 代表作

<details>
<summary><strong>1. AIR-Bench 2024 is a safety benchmark that aligns with emerging government regulations and company policies</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**30**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/stanford-crfm/air-bench-2024)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：AIR-Bench 2024 is a safety benchmark that aligns with emerging government regulations and company policies 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>2. Holistic Evaluation of Language Models (HELM) is an open source Python framework created by the Center for Research on Foundation Models (CRFM) at Stanford for holistic, reproducible and transparent evaluation of foundation models, including large language models (LLMs) and multimodal models.</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**2864**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/stanford-crfm/helm)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：Holistic Evaluation of Language Models (HELM) is an open source Python framework created by the Center for Research on Foundation Models (CRFM) at Stanford for holistic, reproducible and transparent evaluation of foundation models, including large language models (LLMs) and multimodal models. 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>3. Mistral: A strong, northwesterly wind: Framework for transparent and accessible large-scale language model training, built with Hugging Face 🤗  Transformers.</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**581**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/stanford-crfm/mistral)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：Mistral: A strong, northwesterly wind: Framework for transparent and accessible large-scale language model training, built with Hugging Face 🤗 Transformers. 可通过原始链接查看完整项目、论文或数据说明。

</details>

</details>

<details>
<summary><img src="https://github.com/stanfordnlp.png?size=160" width="32" height="32" alt="Stanford Natural Language Processing Group logo"> &nbsp;<strong>Stanford Natural Language Processing Group</strong> · <code>verified</code></summary>

<br>

Stanford Natural Language Processing Group 隶属于 Stanford University，是一支主要关注自然语言处理、大语言模型、智能体等方向的高校研究组。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** Stanford University
- **主要方向：** 自然语言处理、大语言模型、智能体、模型评估
- **负责人：** [负责人/成员页](https://nlp.stanford.edu/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://nlp.stanford.edu/) · [GitHub](https://github.com/stanfordnlp)

#### 最近工作 · 2024

<details>
<summary><strong>2. pyvene: A Library for Understanding and Improving PyTorch Models via Interventions</strong> · arXiv (Cornell University) · 2024</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22pyvene%3A+A+Library+for+Understanding+and+Improving+PyTorch+Models+via+Interventions%22)（未缓存未经核验的数字）
- GitHub Stars：**893**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2403.07809)

**基于 Abstract 的 TL;DR**

研究人员开发了一个名为pyvene的开源Python库，用于在多个AI领域中进行模型内部状态的干预。该库支持自定义干预方案，并且可以包含静态或可训练的参数。通过pyvene，可以实现对神经网络模型的统一和扩展性干预，共享干预结果并进行解释分析。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2403.07809"><img src="https://ar5iv.labs.arxiv.org/html/2403.07809/assets/x1.png" alt="Figure 1: An inference-time intervention  (Li et al., 2023a ) on TinyStories-33M . The model is prompted with “Once upon a time there was a”, and is asked to complete the story. We add a static word embedding (for “happy” or “sad”) into the MLP output at each decoding step for all layers with a coefficient of 0.3. pyvene ’s complete implementation is provided. The original and intervened generations use greedy decoding." width="720"></a>

> Figure 1: An inference-time intervention  (Li et al., 2023a ) on TinyStories-33M . The model is prompted with “Once upon a time there was a”, and is asked to complete the story. We add a static word embedding (for “happy” or “sad”) into the MLP output at each decoding step for all layers with a coefficient of 0.3. pyvene ’s complete implementation is provided. The original and intervened generations use greedy decoding.
> 来源：[原论文](https://arxiv.org/abs/2403.07809)

</details>

#### 代表作

<details>
<summary><strong>1. Stanford NLP Python library for tokenization, sentence segmentation, NER, and parsing of many human languages</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**7854**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/stanfordnlp/stanza)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：Stanford NLP Python library for tokenization, sentence segmentation, NER, and parsing of many human languages 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>2. pyvene: A Library for Understanding and Improving PyTorch Models via Interventions</strong> · arXiv (Cornell University) · 2024</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22pyvene%3A+A+Library+for+Understanding+and+Improving+PyTorch+Models+via+Interventions%22)（未缓存未经核验的数字）
- GitHub Stars：**893**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2403.07809)

**基于 Abstract 的 TL;DR**

研究人员开发了一个名为pyvene的开源Python库，用于在多个AI领域中进行模型内部状态的干预。该库支持自定义干预方案，并且可以包含静态或可训练的参数。通过pyvene，可以实现对神经网络模型的统一和扩展性干预，共享干预结果并进行解释分析。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2403.07809"><img src="https://ar5iv.labs.arxiv.org/html/2403.07809/assets/x1.png" alt="Figure 1: An inference-time intervention  (Li et al., 2023a ) on TinyStories-33M . The model is prompted with “Once upon a time there was a”, and is asked to complete the story. We add a static word embedding (for “happy” or “sad”) into the MLP output at each decoding step for all layers with a coefficient of 0.3. pyvene ’s complete implementation is provided. The original and intervened generations use greedy decoding." width="720"></a>

> Figure 1: An inference-time intervention  (Li et al., 2023a ) on TinyStories-33M . The model is prompted with “Once upon a time there was a”, and is asked to complete the story. We add a static word embedding (for “happy” or “sad”) into the MLP output at each decoding step for all layers with a coefficient of 0.3. pyvene ’s complete implementation is provided. The original and intervened generations use greedy decoding.
> 来源：[原论文](https://arxiv.org/abs/2403.07809)

</details>

<details>
<summary><strong>3. A history of NLP at Stanford, initially written for the Stanford NLP 25 year reunion in 2025</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**2**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/stanfordnlp/stanford-nlp-history)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：A history of NLP at Stanford, initially written for the Stanford NLP 25 year reunion in 2025 可通过原始链接查看完整项目、论文或数据说明。

</details>

</details>

<details>
<summary><img src="https://github.com/StanfordVL.png?size=160" width="32" height="32" alt="Stanford Vision and Learning Lab (SVL) logo"> &nbsp;<strong>Stanford Vision and Learning Lab (SVL)</strong> · <code>verified</code></summary>

<br>

Stanford Vision and Learning Lab (SVL) 隶属于 Stanford University，是一支主要关注计算机视觉、自动驾驶、机器人等方向的高校实验室。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** Stanford University
- **主要方向：** 计算机视觉、自动驾驶、机器人、多模态学习
- **负责人：** [负责人/成员页](https://svl.stanford.edu/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://svl.stanford.edu/) · [GitHub](https://github.com/StanfordVL)

#### 最近工作 · 2022

<details>
<summary><strong>2. Revisiting the &quot;Video&quot; in Video-Language Understanding</strong> · arXiv (Cornell University) · 2022</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Revisiting+the+%22Video%22+in+Video-Language+Understanding%22)（未缓存未经核验的数字）
- GitHub Stars：**51**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2206.01720)

**基于 Abstract 的 TL;DR**

该研究探讨了视频任务与单图的区别，提出了一个新的模型“时间点探针”（ATP），通过它发现理解事件时序性并不是必需条件来实现强或状态-of-the-art的性能。该模型可以改善视频语言数据集和模型设计，并且可以提高效率和性能。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2206.01720"><img src="https://ar5iv.labs.arxiv.org/html/2206.01720/assets/figures/fig4.png" alt="Figure 4 : Improving temporal modeling with ATP. In our Section  4.3 case study, we make use of learned single-embedding ATP selectors to improve temporal modeling. Intuitively, ATP learns to surface frames rich in single event-level information. Building upon this, we propose a simple approach to partition the original video and run (a now frozen ) ATP on each part. These per-partition selection outputs are then useful candidates for a separate downstream learnable model to perform temporal reasoning and output a video-level embedding for the final video-language task." width="720"></a>

> Figure 4 : Improving temporal modeling with ATP. In our Section  4.3 case study, we make use of learned single-embedding ATP selectors to improve temporal modeling. Intuitively, ATP learns to surface frames rich in single event-level information. Building upon this, we propose a simple approach to partition the original video and run (a now frozen ) ATP on each part. These per-partition selection outputs are then useful candidates for a separate downstream learnable model to perform temporal reasoning and output a video-level embedding for the final video-language task.
> 来源：[原论文](https://arxiv.org/abs/2206.01720)

</details>

#### 代表作

<details>
<summary><strong>1. Gibson Environments: Real-World Perception for Embodied Agents</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**943**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/StanfordVL/GibsonEnv)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：Gibson Environments: Real-World Perception for Embodied Agents 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>2. Revisiting the &quot;Video&quot; in Video-Language Understanding</strong> · arXiv (Cornell University) · 2022</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Revisiting+the+%22Video%22+in+Video-Language+Understanding%22)（未缓存未经核验的数字）
- GitHub Stars：**51**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2206.01720)

**基于 Abstract 的 TL;DR**

该研究探讨了视频任务与单图的区别，提出了一个新的模型“时间点探针”（ATP），通过它发现理解事件时序性并不是必需条件来实现强或状态-of-the-art的性能。该模型可以改善视频语言数据集和模型设计，并且可以提高效率和性能。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2206.01720"><img src="https://ar5iv.labs.arxiv.org/html/2206.01720/assets/figures/fig4.png" alt="Figure 4 : Improving temporal modeling with ATP. In our Section  4.3 case study, we make use of learned single-embedding ATP selectors to improve temporal modeling. Intuitively, ATP learns to surface frames rich in single event-level information. Building upon this, we propose a simple approach to partition the original video and run (a now frozen ) ATP on each part. These per-partition selection outputs are then useful candidates for a separate downstream learnable model to perform temporal reasoning and output a video-level embedding for the final video-language task." width="720"></a>

> Figure 4 : Improving temporal modeling with ATP. In our Section  4.3 case study, we make use of learned single-embedding ATP selectors to improve temporal modeling. Intuitively, ATP learns to surface frames rich in single event-level information. Building upon this, we propose a simple approach to partition the original video and run (a now frozen ) ATP on each part. These per-partition selection outputs are then useful candidates for a separate downstream learnable model to perform temporal reasoning and output a video-level embedding for the final video-language task.
> 来源：[原论文](https://arxiv.org/abs/2206.01720)

</details>

<details>
<summary><strong>3. BEHAVIOR-1K: a platform for accelerating Embodied AI research. Join our Discord for support: https://discord.gg/bccR5vGFEx</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**1598**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/StanfordVL/BEHAVIOR-1K)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：BEHAVIOR-1K: a platform for accelerating Embodied AI research. Join our Discord for support: https://discord.gg/bccR5vGFEx 可通过原始链接查看完整项目、论文或数据说明。

</details>

</details>

<details>
<summary><img src="https://github.com/Stanford-ILIAD.png?size=160" width="32" height="32" alt="Stanford Intelligent and Interactive Autonomous Systems Group (ILIAD) logo"> &nbsp;<strong>Stanford Intelligent and Interactive Autonomous Systems Group (ILIAD)</strong> · <code>verified</code></summary>

<br>

Stanford Intelligent and Interactive Autonomous Systems Group (ILIAD) 隶属于 Stanford University，是一支主要关注机器人、人机交互与协作、强化学习等方向的高校研究组。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** Stanford University
- **主要方向：** 机器人、人机交互与协作、强化学习、具身智能
- **负责人：** [Dorsa Sadigh](https://dorsa.fyi/)（Faculty Lead）
- **官方入口：** [官网](https://iliad.stanford.edu/) · [GitHub](https://github.com/Stanford-ILIAD)

#### 最近工作 · 2025

<details>
<summary><strong>3. Shared Autonomy for Proximal Teaching</strong> · 2025 20th ACM/IEEE International Conference on Human-Robot Interaction (HRI) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Shared+Autonomy+for+Proximal+Teaching%22)（未缓存未经核验的数字）
- GitHub Stars：**4**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://doi.org/10.1109/hri61500.2025.10973807)

**基于 Abstract 的 TL;DR**

研究者开发了Z-COACH方法，利用共享自主性框架来提供个人化的运动技能教育。该方法通过分析学生在自动化辅助下行为改善的方式，确定哪些子技能是最适合的学习目标。这项研究在一项用户实验中证明了Z-COACH的有效性，可以提高驾驶时间、行为和平滑度。

</details>

#### 代表作

<details>
<summary><strong>1. Active Preference-Based Gaussian Process Regression for Reward Learning</strong> · Robotics: Science and Systems XVI · 2020</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Active+Preference-Based+Gaussian+Process+Regression+for+Reward+Learning%22)（未缓存未经核验的数字）
- GitHub Stars：**39**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://doi.org/10.15607/rss.2020.xvi.041)

**基于 Abstract 的 TL;DR**

研究问题是如何让人机交互设计出合适的奖励函数。该方法使用Gaussian Process模型，通过人类对动作序列的比较来学习奖励函数，不需要预先定义特定的结构或大量数据。实验结果表明这种方法可以有效地学习 robotics 任务的 expressive reward functions。

</details>

<details>
<summary><strong>2. Emergent Prosociality in Multi-Agent Games Through Gifting</strong> · Proceedings of the Thirtieth International Joint Conference on Artificial Intelligence · 2021</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Emergent+Prosociality+in+Multi-Agent+Games+Through+Gifting%22)（未缓存未经核验的数字）
- GitHub Stars：**6**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://doi.org/10.24963/ijcai.2021/61)

**基于 Abstract 的 TL;DR**

研究者提出了一个新的机制——“赠送”（gifting），它允许在多个代理人之间形成更有利于社会的行为。通过理论框架和实验，研究者证明了赠送可以促进高风险、一般和分散的协调游戏向更有利于社会的平衡状态转变。

</details>

<details>
<summary><strong>3. Shared Autonomy for Proximal Teaching</strong> · 2025 20th ACM/IEEE International Conference on Human-Robot Interaction (HRI) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Shared+Autonomy+for+Proximal+Teaching%22)（未缓存未经核验的数字）
- GitHub Stars：**4**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://doi.org/10.1109/hri61500.2025.10973807)

**基于 Abstract 的 TL;DR**

研究者开发了Z-COACH方法，利用共享自主性框架来提供个人化的运动技能教育。该方法通过分析学生在自动化辅助下行为改善的方式，确定哪些子技能是最适合的学习目标。这项研究在一项用户实验中证明了Z-COACH的有效性，可以提高驾驶时间、行为和平滑度。

</details>

</details>

### University of California, Berkeley（5）

<details>
<summary><img src="https://www.google.com/s2/favicons?domain_url=https%3A%2F%2Fbair.berkeley.edu&amp;sz=128" width="32" height="32" alt="Berkeley Artificial Intelligence Research (BAIR) logo"> &nbsp;<strong>Berkeley Artificial Intelligence Research (BAIR)</strong> · <code>verified</code></summary>

<br>

Berkeley Artificial Intelligence Research (BAIR) 隶属于 University of California, Berkeley，是一支主要关注机器学习、计算机视觉、自然语言处理等方向的高校研究院。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** University of California, Berkeley
- **主要方向：** 机器学习、计算机视觉、自然语言处理、机器人
- **负责人：** [负责人/成员页](https://bair.berkeley.edu/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://bair.berkeley.edu/)

#### 最近工作 · 日期待核验

<details>
<summary><strong>1. Teaching LLMs to Update Beliefs for Efficient Long-Horizon Interaction</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://bair.berkeley.edu/blog/2026/07/26/abbel/)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：Teaching LLMs to Update Beliefs for Efficient Long-Horizon Interaction 可通过原始链接查看完整项目、论文或数据说明。

</details>

#### 代表作

<details>
<summary><strong>1. Teaching LLMs to Update Beliefs for Efficient Long-Horizon Interaction</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://bair.berkeley.edu/blog/2026/07/26/abbel/)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：Teaching LLMs to Update Beliefs for Efficient Long-Horizon Interaction 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>2. Lundberg &amp; Lee, 2017</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://proceedings.neurips.cc/paper/2017/hash/8a20a8621978632d76c43dfd28b67767-Abstract.html)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：Lundberg &amp; Lee, 2017 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>3. Ilyas et al., 2022</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://proceedings.mlr.press/v162/ilyas22a/ilyas22a.pdf)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：Ilyas et al., 2022 可通过原始链接查看完整项目、论文或数据说明。

</details>

</details>

<details>
<summary><img src="https://github.com/HumanCompatibleAI.png?size=160" width="32" height="32" alt="Berkeley Center for Human-Compatible AI (CHAI) logo"> &nbsp;<strong>Berkeley Center for Human-Compatible AI (CHAI)</strong> · <code>verified</code></summary>

<br>

Berkeley Center for Human-Compatible AI (CHAI) 隶属于 University of California, Berkeley，是一支主要关注AI 安全与对齐、AI 对齐、强化学习等方向的高校研究中心。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** University of California, Berkeley
- **主要方向：** AI 安全与对齐、AI 对齐、强化学习、人类兼容 AI
- **负责人：** [Stuart Russell](https://people.eecs.berkeley.edu/~russell/)（Founder and Faculty Director）
- **官方入口：** [官网](https://humancompatible.ai/) · [GitHub](https://github.com/HumanCompatibleAI)

#### 最近工作 · 2025-03-22

<details>
<summary><strong>1. A benchmark environment for fully cooperative human-AI performance.</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**988**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/HumanCompatibleAI/overcooked_ai)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：A benchmark environment for fully cooperative human-AI performance. 可通过原始链接查看完整项目、论文或数据说明。

</details>

#### 代表作

<details>
<summary><strong>1. A benchmark environment for fully cooperative human-AI performance.</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**988**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/HumanCompatibleAI/overcooked_ai)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：A benchmark environment for fully cooperative human-AI performance. 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>2. Clean PyTorch implementations of imitation and reward learning algorithms</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**1773**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/HumanCompatibleAI/imitation)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：Clean PyTorch implementations of imitation and reward learning algorithms 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>3. A prompt injection game to collect data for robust ML research</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**72**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/HumanCompatibleAI/tensor-trust)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：A prompt injection game to collect data for robust ML research 可通过原始链接查看完整项目、论文或数据说明。

</details>

</details>

<details>
<summary><img src="https://github.com/rail-berkeley.png?size=160" width="32" height="32" alt="Berkeley Robotic AI &amp; Learning Lab (RAIL) logo"> &nbsp;<strong>Berkeley Robotic AI &amp; Learning Lab (RAIL)</strong> · <code>verified</code></summary>

<br>

Berkeley Robotic AI & Learning Lab (RAIL) 隶属于 University of California, Berkeley，是一支主要关注机器人、强化学习、计算机视觉等方向的高校实验室。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** University of California, Berkeley
- **主要方向：** 机器人、强化学习、计算机视觉、具身智能
- **负责人：** [Sergey Levine](https://people.eecs.berkeley.edu/~svlevine/)（Faculty Lead）
- **官方入口：** [官网](https://rail.eecs.berkeley.edu/) · [GitHub](https://github.com/rail-berkeley)

#### 最近工作 · 2024

<details>
<summary><strong>3. SERL: A Software Suite for Sample-Efficient Robotic Reinforcement Learning</strong> · 2024 IEEE International Conference on Robotics and Automation (ICRA) · 2024</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22SERL%3A+A+Software+Suite+for+Sample-Efficient+Robotic+Reinforcement+Learning%22)（未缓存未经核验的数字）
- GitHub Stars：**846**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://doi.org/10.1109/icra57147.2024.10610040)

**基于 Abstract 的 TL;DR**

研究人员开发了一种开源深度学习库，旨在解决机器人强化学习的实施难题。实验结果表明，该方法可以在短时间内有效地学习和实现复杂任务，如板式组装、线路布局和物体移动，表现出极高的成功率和对扰动的鲁棒性。

</details>

#### 代表作

<details>
<summary><strong>1. Autonomous Improvement of Instruction Following Skills via Foundation Models</strong> · arXiv (Cornell University) · 2024</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Autonomous+Improvement+of+Instruction+Following+Skills+via+Foundation+Models%22)（未缓存未经核验的数字）
- GitHub Stars：**77**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2407.20635)

**基于 Abstract 的 TL;DR**

该研究探讨了如何让智能机器人通过自主收集经验来改进，避免需要昂贵的人工操作示例数据。研究者提出了一个新方法，可以让机器人在无人监督下从自主收集的数据中改进。该方法使用视觉-语言模型收集和评估有意义的机器人数据，然后分解指令遵循任务为语义条件下的图像生成和非语义目标-reaching，这使得可以在没有人工标注的情况下从自主收集的数据中改进。实验结果表明，在未见过的环境中，机器人政策可以通过自主收集的数据改进2倍。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2407.20635"><img src="https://ar5iv.labs.arxiv.org/html/2407.20635/assets/x2.png" alt="Figure 2: Overview of the SOAR autonomous improvement pipeline: First, we equip the robot with a set of basic skill by pre-training. Then, we deploy the pre-trained policy on a fleet of five robots to autonomously collect data, with a VLM proposing viable language tasks to practice. Finally, we use a VLM to label success information of the collected trajectories, and train the policy using this data, resulting in improvement." width="720"></a>

> Figure 2: Overview of the SOAR autonomous improvement pipeline: First, we equip the robot with a set of basic skill by pre-training. Then, we deploy the pre-trained policy on a fleet of five robots to autonomously collect data, with a VLM proposing viable language tasks to practice. Finally, we use a VLM to label success information of the collected trajectories, and train the policy using this data, resulting in improvement.
> 来源：[原论文](https://arxiv.org/abs/2407.20635)

</details>

<details>
<summary><strong>2. Collection of reinforcement learning algorithms</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**2922**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/rail-berkeley/rlkit)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：Collection of reinforcement learning algorithms 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>3. SERL: A Software Suite for Sample-Efficient Robotic Reinforcement Learning</strong> · 2024 IEEE International Conference on Robotics and Automation (ICRA) · 2024</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22SERL%3A+A+Software+Suite+for+Sample-Efficient+Robotic+Reinforcement+Learning%22)（未缓存未经核验的数字）
- GitHub Stars：**846**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://doi.org/10.1109/icra57147.2024.10610040)

**基于 Abstract 的 TL;DR**

研究人员开发了一种开源深度学习库，旨在解决机器人强化学习的实施难题。实验结果表明，该方法可以在短时间内有效地学习和实现复杂任务，如板式组装、线路布局和物体移动，表现出极高的成功率和对扰动的鲁棒性。

</details>

</details>

<details>
<summary><img src="https://github.com/Berkeley-NLP.png?size=160" width="32" height="32" alt="Berkeley Natural Language Processing Group logo"> &nbsp;<strong>Berkeley Natural Language Processing Group</strong> · <code>verified</code></summary>

<br>

Berkeley Natural Language Processing Group 隶属于 University of California, Berkeley，是一支主要关注自然语言处理、大语言模型、信息检索等方向的高校研究组。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** University of California, Berkeley
- **主要方向：** 自然语言处理、大语言模型、信息检索、模型评估
- **负责人：** [负责人/成员页](https://nlp.berkeley.edu/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://nlp.berkeley.edu/) · [GitHub](https://github.com/Berkeley-NLP)

#### 最近工作 · 2025

<details>
<summary><strong>3. Long Chain-of-Thought Reasoning Across Languages</strong> · arXiv (Cornell University) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Long+Chain-of-Thought+Reasoning+Across+Languages%22)（未缓存未经核验的数字）
- GitHub Stars：**1**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2508.14828)

**基于 Abstract 的 TL;DR**

研究人员探讨了如何将长链思考能力从英语转移到其他语言中。他们发现，增加模型大小可以改善非英语语言中的任务性能，但对于需要多步长链思考的任务，效果不佳。通过预训练和后期训练，他们发现专门设计的推理阶段可以提高非英语语言中的性能，但也会降低目标语言中的性能。研究人员还发现不同语言之间存在推理效率差异，并找到了语言特有的失败模式。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2508.14828"><img src="https://ar5iv.labs.arxiv.org/html/2508.14828/assets/x1.png" alt="Figure 1: Accuracy on MATH-500 vs number of reasoning tokens in Qwen 3 models’ outputs." width="720"></a>

> Figure 1: Accuracy on MATH-500 vs number of reasoning tokens in Qwen 3 models’ outputs.
> 来源：[原论文](https://arxiv.org/abs/2508.14828)

</details>

#### 代表作

<details>
<summary><strong>1. Autonomous Evaluation and Refinement of Digital Agents</strong> · arXiv (Cornell University) · 2024</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Autonomous+Evaluation+and+Refinement+of+Digital+Agents%22)（未缓存未经核验的数字）
- GitHub Stars：**149**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2404.06474)

**基于 Abstract 的 TL;DR**

研究表明，通用自动评估工具可以显著改善 web 导航和设备控制的代理人性能。通过实验，发现多种评估模型在不同权衡中取得了良好的结果，并且在几项流行的代理人benchmark上获得了74.4%至92.9%的 oracle 评估指标一致性。使用这些评估工具改进现有代理人，仅通过 fine-tuning 和实时指导就能提高 WebArena 基准的状态-of-the-art性能29%，并在设备控制设置中实现大约75%相对改善。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2404.06474"><img src="https://ar5iv.labs.arxiv.org/html/2404.06474/assets/x1.png" alt="Figure 1: Method overview: A model-based evaluator provides evaluation of a digital agent’s trajectory (left). It can be used as the reward function for Reflexion  (Shinn et al., 2023 ) or filtered behavior cloning to enhance model performance (right)." width="720"></a>

> Figure 1: Method overview: A model-based evaluator provides evaluation of a digital agent’s trajectory (left). It can be used as the reward function for Reflexion  (Shinn et al., 2023 ) or filtered behavior cloning to enhance model performance (right).
> 来源：[原论文](https://arxiv.org/abs/2404.06474)

</details>

<details>
<summary><strong>2. Using Language Models to Disambiguate Lexical Choices in Translation</strong> · arXiv (Cornell University) · 2024</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Using+Language+Models+to+Disambiguate+Lexical+Choices+in+Translation%22)（未缓存未经核验的数字）
- GitHub Stars：**6**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2411.05781)

**基于 Abstract 的 TL;DR**

研究人员创建了一个数据集DTAiLS，包含9种语言的单词概念变异。他们评估了最近的语言模型和机器翻译系统，并发现GPT-4在67%至85%的准确率之间取得了最佳结果。使用语言模型生成目标语言概念变异规则后，弱化模型的准确度大幅提高，甚至超过GPT-4。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2411.05781"><img src="https://ar5iv.labs.arxiv.org/html/2411.05781/assets/x1.png" alt="Figure 2: Comparisons between LMs with and without rules to NMT systems on lexical selection. We report μ ± σ subscript 𝜇 plus-or-minus 𝜎 \mu_{\pm\sigma} across 3 runs for LM experiments." width="720"></a>

> Figure 2: Comparisons between LMs with and without rules to NMT systems on lexical selection. We report μ ± σ subscript 𝜇 plus-or-minus 𝜎 \mu_{\pm\sigma} across 3 runs for LM experiments.
> 来源：[原论文](https://arxiv.org/abs/2411.05781)

</details>

<details>
<summary><strong>3. Long Chain-of-Thought Reasoning Across Languages</strong> · arXiv (Cornell University) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Long+Chain-of-Thought+Reasoning+Across+Languages%22)（未缓存未经核验的数字）
- GitHub Stars：**1**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2508.14828)

**基于 Abstract 的 TL;DR**

研究人员探讨了如何将长链思考能力从英语转移到其他语言中。他们发现，增加模型大小可以改善非英语语言中的任务性能，但对于需要多步长链思考的任务，效果不佳。通过预训练和后期训练，他们发现专门设计的推理阶段可以提高非英语语言中的性能，但也会降低目标语言中的性能。研究人员还发现不同语言之间存在推理效率差异，并找到了语言特有的失败模式。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2508.14828"><img src="https://ar5iv.labs.arxiv.org/html/2508.14828/assets/x1.png" alt="Figure 1: Accuracy on MATH-500 vs number of reasoning tokens in Qwen 3 models’ outputs." width="720"></a>

> Figure 1: Accuracy on MATH-500 vs number of reasoning tokens in Qwen 3 models’ outputs.
> 来源：[原论文](https://arxiv.org/abs/2508.14828)

</details>

</details>

<details>
<summary><img src="https://github.com/skypilot-org.png?size=160" width="32" height="32" alt="Berkeley Sky Computing Lab logo"> &nbsp;<strong>Berkeley Sky Computing Lab</strong> · <code>verified</code></summary>

<br>

Berkeley Sky Computing Lab 隶属于 University of California, Berkeley，是一支主要关注AI 系统、分布式计算、模型服务等方向的高校实验室。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** University of California, Berkeley
- **主要方向：** AI 系统、分布式计算、模型服务、云计算
- **负责人：** [负责人/成员页](https://sky.cs.berkeley.edu/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://sky.cs.berkeley.edu/) · [GitHub](https://github.com/skypilot-org)

#### 最近工作 · 2026-07-28

<details>
<summary><strong>1. The AI Compute Platform for frontier teams. SkyPilot turns fragmented AI compute into one AI supercomputer, so frontier AI teams build custom intelligence faster.</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**10416**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/skypilot-org/skypilot)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：The AI Compute Platform for frontier teams. SkyPilot turns fragmented AI compute into one AI supercomputer, so frontier AI teams build custom intelligence faster. 可通过原始链接查看完整项目、论文或数据说明。

</details>

#### 代表作

<details>
<summary><strong>1. The AI Compute Platform for frontier teams. SkyPilot turns fragmented AI compute into one AI supercomputer, so frontier AI teams build custom intelligence faster.</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**10416**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/skypilot-org/skypilot)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：The AI Compute Platform for frontier teams. SkyPilot turns fragmented AI compute into one AI supercomputer, so frontier AI teams build custom intelligence faster. 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>2. Tutorial to get started with SkyPilot!</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**60**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/skypilot-org/skypilot-tutorial)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：Tutorial to get started with SkyPilot! 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>3. Releasing the spot availability traces used in &quot;Can&#39;t Be Late&quot; paper.</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**27**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/skypilot-org/spot-traces)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：Releasing the spot availability traces used in &quot;Can&#39;t Be Late&quot; paper. 可通过原始链接查看完整项目、论文或数据说明。

</details>

</details>

### University of Maryland, College Park（4）

<details>
<summary><img src="https://github.com/UMIACS.png?size=160" width="32" height="32" alt="University of Maryland Institute for Advanced Computer Studies (UMIACS) logo"> &nbsp;<strong>University of Maryland Institute for Advanced Computer Studies (UMIACS)</strong> · <code>verified</code></summary>

<br>

University of Maryland Institute for Advanced Computer Studies (UMIACS) 隶属于 University of Maryland, College Park，是一支主要关注人工智能、自然语言处理、计算机视觉等方向的高校研究院。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** University of Maryland, College Park
- **主要方向：** 人工智能、自然语言处理、计算机视觉、机器人
- **负责人：** [负责人/成员页](https://www.umiacs.umd.edu/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://www.umiacs.umd.edu/) · [GitHub](https://github.com/UMIACS)

#### 最近工作 · 2024-02-13

<details>
<summary><strong>1. Ceph Object Storage Admin API python library bindings.</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**90**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/UMIACS/rgwadmin)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：Ceph Object Storage Admin API python library bindings. 可通过原始链接查看完整项目、论文或数据说明。

</details>

#### 代表作

<details>
<summary><strong>1. Ceph Object Storage Admin API python library bindings.</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**90**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/UMIACS/rgwadmin)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：Ceph Object Storage Admin API python library bindings. 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>2. Research track · Artificial Intelligence</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://www.umiacs.umd.edu/)

**摘要 / 项目说明**

这是团队的官方研究入口，可继续访问其研究方向、项目或论文列表；该条目不是单篇论文，因此不展示论文引用量。

</details>

<details>
<summary><strong>3. Research track · Natural Language Processing</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://github.com/UMIACS)

**摘要 / 项目说明**

这是团队的官方研究入口，可继续访问其研究方向、项目或论文列表；该条目不是单篇论文，因此不展示论文引用量。

</details>

</details>

<details>
<summary><img src="https://www.google.com/s2/favicons?domain_url=https%3A%2F%2Fwiki.umiacs.umd.edu&amp;sz=128" width="32" height="32" alt="UMD Computational Linguistics and Information Processing Lab (CLIP) logo"> &nbsp;<strong>UMD Computational Linguistics and Information Processing Lab (CLIP)</strong> · <code>verified</code></summary>

<br>

UMD Computational Linguistics and Information Processing Lab (CLIP) 隶属于 University of Maryland, College Park，是一支主要关注自然语言处理、信息检索、机器翻译等方向的高校实验室。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** University of Maryland, College Park
- **主要方向：** 自然语言处理、信息检索、机器翻译、大语言模型
- **负责人：** [负责人/成员页](https://wiki.umiacs.umd.edu/clip/index.php/Main_Page) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://wiki.umiacs.umd.edu/clip/index.php/Main_Page)

#### 最近工作 · 日期待核验

<details>
<summary><strong>1. Department of Computer Science</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](http://www.cs.umd.edu/)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：Department of Computer Science 可通过原始链接查看完整项目、论文或数据说明。

</details>

#### 代表作

<details>
<summary><strong>1. Department of Computer Science</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](http://www.cs.umd.edu/)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：Department of Computer Science 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>2. Department of Linguistics</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](http://www.ling.umd.edu/)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：Department of Linguistics 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>3. Robert H. Smith School of Business</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](http://www.rhsmith.umd.edu/)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：Robert H. Smith School of Business 可通过原始链接查看完整项目、论文或数据说明。

</details>

</details>

<details>
<summary><img src="https://www.google.com/s2/favicons?domain_url=https%3A%2F%2Frobotics.umd.edu&amp;sz=128" width="32" height="32" alt="Maryland Robotics Center logo"> &nbsp;<strong>Maryland Robotics Center</strong> · <code>verified</code></summary>

<br>

Maryland Robotics Center 隶属于 University of Maryland, College Park，是一支主要关注机器人、具身智能、自主系统等方向的高校研究中心。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** University of Maryland, College Park
- **主要方向：** 机器人、具身智能、自主系统、计算机视觉
- **负责人：** [负责人/成员页](https://robotics.umd.edu/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://robotics.umd.edu/)

#### 最近工作 · 日期待核验

<details>
<summary><strong>1. Autonomous Systems</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://robotics.umd.edu/research/autonomous-systems)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：Autonomous Systems 可通过原始链接查看完整项目、论文或数据说明。

</details>

#### 代表作

<details>
<summary><strong>1. Autonomous Systems</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://robotics.umd.edu/research/autonomous-systems)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：Autonomous Systems 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>2. Bio-Inspired Robotics</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://robotics.umd.edu/research/bio-inspired-robotics)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：Bio-Inspired Robotics 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>3. Cognitive Robotics</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://robotics.umd.edu/research/cognitive-robotics)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：Cognitive Robotics 可通过原始链接查看完整项目、论文或数据说明。

</details>

</details>

<details>
<summary><img src="https://www.google.com/s2/favicons?domain_url=https%3A%2F%2Fgamma.umd.edu&amp;sz=128" width="32" height="32" alt="UMD GAMMA Research Group logo"> &nbsp;<strong>UMD GAMMA Research Group</strong> · <code>provisional</code></summary>

<br>

UMD GAMMA Research Group 隶属于 University of Maryland, College Park，是一支主要关注计算机视觉、机器人、仿真等方向的高校研究组。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** University of Maryland, College Park
- **主要方向：** 计算机视觉、机器人、仿真、生成式 AI
- **负责人：** [Dinesh Manocha](https://www.cs.umd.edu/people/dmanocha)（Director）
- **官方入口：** [官网](https://gamma.umd.edu/)

#### 最近工作 · 日期待核验

<details>
<summary><strong>1. VEGA: Learning Navigation VLAs from In-the-Wild Egocentric Video with Geometric Trajectory Supervision</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://gamma.umd.edu/publication/848/)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：VEGA: Learning Navigation VLAs from In-the-Wild Egocentric Video with Geometric Trajectory Supervision 可通过原始链接查看完整项目、论文或数据说明。

</details>

#### 代表作

<details>
<summary><strong>1. VEGA: Learning Navigation VLAs from In-the-Wild Egocentric Video with Geometric Trajectory Supervision</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://gamma.umd.edu/publication/848/)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：VEGA: Learning Navigation VLAs from In-the-Wild Egocentric Video with Geometric Trajectory Supervision 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>2. Act on What You See: Unlocking Safe Social Navigation in Vision-Language-Action Models</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://gamma.umd.edu/publication/849/)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：Act on What You See: Unlocking Safe Social Navigation in Vision-Language-Action Models 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>3. PhysGS: Bayesian-Inferred Gaussian Splatting for Physical Property Estimation</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://gamma.umd.edu/publication/847/)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：PhysGS: Bayesian-Inferred Gaussian Splatting for Physical Property Estimation 可通过原始链接查看完整项目、论文或数据说明。

</details>

</details>

### University of California, San Diego（4）

<details>
<summary><img src="https://www.google.com/s2/favicons?domain_url=https%3A%2F%2Fdatascience.ucsd.edu&amp;sz=128" width="32" height="32" alt="UC San Diego HDSI — Artificial Intelligence and Machine Learning logo"> &nbsp;<strong>UC San Diego HDSI — Artificial Intelligence and Machine Learning</strong> · <code>verified</code></summary>

<br>

UC San Diego HDSI — Artificial Intelligence and Machine Learning 隶属于 University of California, San Diego，是一支主要关注机器学习、计算机视觉、机器人等方向的高校研究网络。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** University of California, San Diego
- **主要方向：** 机器学习、计算机视觉、机器人、数据科学
- **负责人：** [负责人/成员页](https://datascience.ucsd.edu/research/artificial-intelligence-and-machine-learning/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://datascience.ucsd.edu/research/artificial-intelligence-and-machine-learning/)

#### 最近工作 · 日期待核验

<details>
<summary><strong>1. Commitment and Resources</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://datascience.ucsd.edu/commitment-and-resources/)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：Commitment and Resources 可通过原始链接查看完整项目、论文或数据说明。

</details>

#### 代表作

<details>
<summary><strong>1. Commitment and Resources</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://datascience.ucsd.edu/commitment-and-resources/)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：Commitment and Resources 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>2. The Halıcıoğlu Challenge</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://datascience.ucsd.edu/the-halicioglu-challenge/)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：The Halıcıoğlu Challenge 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>3. Annual Report – Year 6</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://datascience.ucsd.edu/annual-report-year-6/)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：Annual Report – Year 6 可通过原始链接查看完整项目、论文或数据说明。

</details>

</details>

<details>
<summary><img src="https://www.google.com/s2/favicons?domain_url=https%3A%2F%2Fcontextualrobotics.ucsd.edu&amp;sz=128" width="32" height="32" alt="UC San Diego Contextual Robotics Institute logo"> &nbsp;<strong>UC San Diego Contextual Robotics Institute</strong> · <code>verified</code></summary>

<br>

UC San Diego Contextual Robotics Institute 隶属于 University of California, San Diego，是一支主要关注机器人、自主系统、计算机视觉等方向的高校研究院。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** University of California, San Diego
- **主要方向：** 机器人、自主系统、计算机视觉、人机交互与协作
- **负责人：** [负责人/成员页](https://contextualrobotics.ucsd.edu/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://contextualrobotics.ucsd.edu/)

#### 最近工作 · 日期待核验

<details>
<summary><strong>1. Tania Morimoto Recognized with MassRobotics Rising Star in Robotics Medal</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://www.massrobotics.org/massrobotics-announces-recipients-of-2025-robotics-medal-recognizing-accomplishments-of-women-in-robotics/)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：Tania Morimoto Recognized with MassRobotics Rising Star in Robotics Medal 可通过原始链接查看完整项目、论文或数据说明。

</details>

#### 代表作

<details>
<summary><strong>1. Tania Morimoto Recognized with MassRobotics Rising Star in Robotics Medal</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://www.massrobotics.org/massrobotics-announces-recipients-of-2025-robotics-medal-recognizing-accomplishments-of-women-in-robotics/)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：Tania Morimoto Recognized with MassRobotics Rising Star in Robotics Medal 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>2. View a list of research sponsors.</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://contextualrobotics.ucsd.edu/sponsors)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：View a list of research sponsors. 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>3. Henrik Christensen head shots</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://www.flickr.com/photos/jsoe/sets/72157677096495406)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：Henrik Christensen head shots 可通过原始链接查看完整项目、论文或数据说明。

</details>

</details>

<details>
<summary><img src="https://github.com/ExistentialRobotics.png?size=160" width="32" height="32" alt="UC San Diego Existential Robotics Lab logo"> &nbsp;<strong>UC San Diego Existential Robotics Lab</strong> · <code>verified</code></summary>

<br>

UC San Diego Existential Robotics Lab 隶属于 University of California, San Diego，是一支主要关注机器人、强化学习、同步定位与建图等方向的高校实验室。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** University of California, San Diego
- **主要方向：** 机器人、强化学习、同步定位与建图、安全自主系统
- **负责人：** [负责人/成员页](https://erl.ucsd.edu/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://erl.ucsd.edu/) · [GitHub](https://github.com/ExistentialRobotics)

#### 最近工作 · 2025

<details>
<summary><strong>1. Seeing the Bigger Picture: 3D Latent Mapping for Mobile Manipulation Policy Learning</strong> · arXiv (Cornell University) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Seeing+the+Bigger+Picture%3A+3D+Latent+Mapping+for+Mobile+Manipulation+Policy+Learning%22)（未缓存未经核验的数字）
- GitHub Stars：**9**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2510.03885)

**基于 Abstract 的 TL;DR**

该研究表明，使用3D隐形地图的移动操作策略可以比仅依靠图像实现更强大的空间和时间推理。该方法 Seeing the Bigger Picture（SBP）通过直接在3D隐形地图上进行端到端的学习来实现，这个地图可以扩展感知范围，聚合观察结果在长时空内。实验结果表明，SBP能够在场景级别移动操作和序列性桌面操作任务中表现出更强大的全球推理能力、长时空记忆和图像基于策略的优越性。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2510.03885"><img src="https://ar5iv.labs.arxiv.org/html/2510.03885/assets/x5.png" alt="Figure 6 : Qualitative comparison on home-rearrangement tasks under out-of-distribution conditions. At the start of each episode, the robot is placed at a distant base pose unseen during training, with the target object completely outside of the robot’s current field of view. Image-BC (#1 and #3) fails to localize the object in these settings, resulting in inefficient trajectories that fail to reach the target. In contrast, Map-BC (#2 and #4) successfully navigates to and grasps the object, completing the task with direct and efficient trajectories." width="720"></a>

> Figure 6 : Qualitative comparison on home-rearrangement tasks under out-of-distribution conditions. At the start of each episode, the robot is placed at a distant base pose unseen during training, with the target object completely outside of the robot’s current field of view. Image-BC (#1 and #3) fails to localize the object in these settings, resulting in inefficient trajectories that fail to reach the target. In contrast, Map-BC (#2 and #4) successfully navigates to and grasps the object, completing the task with direct and efficient trajectories.
> 来源：[原论文](https://arxiv.org/abs/2510.03885)

</details>

#### 代表作

<details>
<summary><strong>1. Seeing the Bigger Picture: 3D Latent Mapping for Mobile Manipulation Policy Learning</strong> · arXiv (Cornell University) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Seeing+the+Bigger+Picture%3A+3D+Latent+Mapping+for+Mobile+Manipulation+Policy+Learning%22)（未缓存未经核验的数字）
- GitHub Stars：**9**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2510.03885)

**基于 Abstract 的 TL;DR**

该研究表明，使用3D隐形地图的移动操作策略可以比仅依靠图像实现更强大的空间和时间推理。该方法 Seeing the Bigger Picture（SBP）通过直接在3D隐形地图上进行端到端的学习来实现，这个地图可以扩展感知范围，聚合观察结果在长时空内。实验结果表明，SBP能够在场景级别移动操作和序列性桌面操作任务中表现出更强大的全球推理能力、长时空记忆和图像基于策略的优越性。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2510.03885"><img src="https://ar5iv.labs.arxiv.org/html/2510.03885/assets/x5.png" alt="Figure 6 : Qualitative comparison on home-rearrangement tasks under out-of-distribution conditions. At the start of each episode, the robot is placed at a distant base pose unseen during training, with the target object completely outside of the robot’s current field of view. Image-BC (#1 and #3) fails to localize the object in these settings, resulting in inefficient trajectories that fail to reach the target. In contrast, Map-BC (#2 and #4) successfully navigates to and grasps the object, completing the task with direct and efficient trajectories." width="720"></a>

> Figure 6 : Qualitative comparison on home-rearrangement tasks under out-of-distribution conditions. At the start of each episode, the robot is placed at a distant base pose unseen during training, with the target object completely outside of the robot’s current field of view. Image-BC (#1 and #3) fails to localize the object in these settings, resulting in inefficient trajectories that fail to reach the target. In contrast, Map-BC (#2 and #4) successfully navigates to and grasps the object, completing the task with direct and efficient trajectories.
> 来源：[原论文](https://arxiv.org/abs/2510.03885)

</details>

<details>
<summary><strong>2. Generalizable Motion Planning via Operator Learning</strong> · arXiv (Cornell University) · 2024</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Generalizable+Motion+Planning+via+Operator+Learning%22)（未缓存未经核验的数字）
- GitHub Stars：**8**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2410.17547)

**基于 Abstract 的 TL;DR**

该研究引入了一种规划神经操作器（Planning Neural Operator，PNO），用于预测运动规划问题的值函数。该模型将值函数估计重写为从成本函数空间到值函数空间的单个操作，从Eikonal部分微分方程（PDE）定义。因此，PNO模型尽管在有限样本下训练，但具有神经操作器的零-shot超解析性。研究表明，该模型在MovingAI lab 2D城市数据集上准确估计值函数，且在3D场景中与现有神经值函数预测器进行比较。在4DOF机器人手臂上展示了优质的规划。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2410.17547"><img src="https://ar5iv.labs.arxiv.org/html/2410.17547/assets/x1.png" alt="Figure 1 : Example of super-resolution capabilities of PNO for motion planning on a map of NYC. The operator is trained on a dataset of resolution 64 × 64 64 64 64\times 64 and the examples shown here (resolutions 256 × 256 256 256 256\times 256 , 512 × 512 512 512 512\times 512 , and 1024 × 1024 1024 1024 1024\times 1024 ) were not seen during training. See Sec.  4 for details." width="720"></a>

> Figure 1 : Example of super-resolution capabilities of PNO for motion planning on a map of NYC. The operator is trained on a dataset of resolution 64 × 64 64 64 64\times 64 and the examples shown here (resolutions 256 × 256 256 256 256\times 256 , 512 × 512 512 512 512\times 512 , and 1024 × 1024 1024 1024 1024\times 1024 ) were not seen during training. See Sec.  4 for details.
> 来源：[原论文](https://arxiv.org/abs/2410.17547)

</details>

<details>
<summary><strong>3. MISO: Multiresolution Submap Optimization for Efficient Globally Consistent Neural Implicit Reconstruction</strong> · arXiv (Cornell University) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22MISO%3A+Multiresolution+Submap+Optimization+for+Efficient+Globally+Consistent+Neural+Implicit+Reconstruction%22)（未缓存未经核验的数字）
- GitHub Stars：**47**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2504.19104)

**基于 Abstract 的 TL;DR**

研究者提出MISO（多层级优化方法），一种利用多分辨率子图的方法，来解决大环境中神经隐式表示SLAM的优化问题。该方法通过使用多层级优化方案和学习初始化来减少局部SLAM的计算时间，并且通过对多分辨率子图进行对齐和融合来提高全局一致性，进而显著提高神经签度函数SLAM的计算效率和估计精度。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2504.19104"><img src="https://ar5iv.labs.arxiv.org/html/2504.19104/assets/x2.png" alt="(a) Local mapping with multiresolution feature grid" width="720"></a>

> (a) Local mapping with multiresolution feature grid
> 来源：[原论文](https://arxiv.org/abs/2504.19104)

</details>

</details>

<details>
<summary><img src="https://www.google.com/s2/favicons?domain_url=https%3A%2F%2Fcvrr.ucsd.edu&amp;sz=128" width="32" height="32" alt="UC San Diego Computer Vision &amp; Robotics Research / LISA Lab logo"> &nbsp;<strong>UC San Diego Computer Vision &amp; Robotics Research / LISA Lab</strong> · <code>provisional</code></summary>

<br>

UC San Diego Computer Vision & Robotics Research / LISA Lab 隶属于 University of California, San Diego，是一支主要关注计算机视觉、自动驾驶、多模态感知等方向的高校实验室。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** University of California, San Diego
- **主要方向：** 计算机视觉、自动驾驶、多模态感知、机器人
- **负责人：** [负责人/成员页](https://cvrr.ucsd.edu/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://cvrr.ucsd.edu/)

#### 最近工作 · 日期待核验

<details>
<summary><strong>1. doi: 10.1109/JSTSP.2012.2196975</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](http://web.archive.org/web/20210518075048/http://dx.doi.org/10.1109/JSTSP.2012.2196975)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：doi: 10.1109/JSTSP.2012.2196975 可通过原始链接查看完整项目、论文或数据说明。

</details>

#### 代表作

<details>
<summary><strong>1. doi: 10.1109/JSTSP.2012.2196975</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](http://web.archive.org/web/20210518075048/http://dx.doi.org/10.1109/JSTSP.2012.2196975)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：doi: 10.1109/JSTSP.2012.2196975 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>2. doi:10.1167/12.2.9</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](http://web.archive.org/web/20210518075048/http://www.journalofvision.org/content/12/2/9.short)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：doi:10.1167/12.2.9 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>3. Research track · Computer Vision</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://cvrr.ucsd.edu/)

**摘要 / 项目说明**

这是团队的官方研究入口，可继续访问其研究方向、项目或论文列表；该条目不是单篇论文，因此不展示论文引用量。

</details>

</details>

### University of Washington（4）

<details>
<summary><img src="https://www.google.com/s2/favicons?domain_url=https%3A%2F%2Fwail.uw.edu&amp;sz=128" width="32" height="32" alt="Washington AI Lab (WAIL) logo"> &nbsp;<strong>Washington AI Lab (WAIL)</strong> · <code>verified</code></summary>

<br>

Washington AI Lab (WAIL) 隶属于 University of Washington，是一支主要关注人工智能、自然语言处理、计算机视觉等方向的高校研究网络。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** University of Washington
- **主要方向：** 人工智能、自然语言处理、计算机视觉、可信 AI
- **负责人：** [负责人/成员页](https://wail.uw.edu/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://wail.uw.edu/)

#### 最近工作 · 日期待核验

<details>
<summary><strong>1. WCAG accessibility standards</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://www.w3.org/WAI/standards-guidelines/wcag/)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：WCAG accessibility standards 可通过原始链接查看完整项目、论文或数据说明。

</details>

#### 代表作

<details>
<summary><strong>1. WCAG accessibility standards</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://www.w3.org/WAI/standards-guidelines/wcag/)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：WCAG accessibility standards 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>2. Research track · Artificial Intelligence</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://wail.uw.edu/)

**摘要 / 项目说明**

这是团队的官方研究入口，可继续访问其研究方向、项目或论文列表；该条目不是单篇论文，因此不展示论文引用量。

</details>

<details>
<summary><strong>3. Research track · Natural Language Processing</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://wail.uw.edu/)

**摘要 / 项目说明**

这是团队的官方研究入口，可继续访问其研究方向、项目或论文列表；该条目不是单篇论文，因此不展示论文引用量。

</details>

</details>

<details>
<summary><img src="https://github.com/uwrobotics.png?size=160" width="32" height="32" alt="UW Robotics logo"> &nbsp;<strong>UW Robotics</strong> · <code>verified</code></summary>

<br>

UW Robotics 隶属于 University of Washington，是一支主要关注机器人、具身智能、计算机视觉等方向的高校研究网络。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** University of Washington
- **主要方向：** 机器人、具身智能、计算机视觉、人机交互与协作
- **负责人：** [负责人/成员页](https://robotics.cs.washington.edu/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://robotics.cs.washington.edu/) · [GitHub](https://github.com/uwrobotics)

#### 最近工作 · 2026-07-27

<details>
<summary><strong>3. UWRobotics competition repository for our season 2026 competition rover Sparky.</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**0**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/uwrobotics/Sparky-CIRC-2026)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：UWRobotics competition repository for our season 2026 competition rover Sparky. 可通过原始链接查看完整项目、论文或数据说明。

</details>

#### 代表作

<details>
<summary><strong>1. UWRT_Controller_StateMachine</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**0**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/uwrobotics/UWRT_Controller_StateMachine)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：UWRT_Controller_StateMachine 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>2. This is the project for URC 2025 season code for the jetson host.</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**0**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/uwrobotics/URC_ROVER_2025)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：This is the project for URC 2025 season code for the jetson host. 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>3. UWRobotics competition repository for our season 2026 competition rover Sparky.</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- GitHub Stars：**0**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://github.com/uwrobotics/Sparky-CIRC-2026)

**摘要 / 项目说明**

这是团队公开的开源研究成果。目录中的公开说明为：UWRobotics competition repository for our season 2026 competition rover Sparky. 可通过原始链接查看完整项目、论文或数据说明。

</details>

</details>

<details>
<summary><img src="https://www.google.com/s2/favicons?domain_url=https%3A%2F%2Fnlp.cs.washington.edu&amp;sz=128" width="32" height="32" alt="UW Natural Language Processing Group logo"> &nbsp;<strong>UW Natural Language Processing Group</strong> · <code>verified</code></summary>

<br>

UW Natural Language Processing Group 隶属于 University of Washington，是一支主要关注自然语言处理、大语言模型、多语言 AI等方向的高校研究组。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** University of Washington
- **主要方向：** 自然语言处理、大语言模型、多语言 AI、负责任 AI
- **负责人：** [负责人/成员页](https://nlp.cs.washington.edu/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://nlp.cs.washington.edu/)

#### 最近工作 · 日期待核验

<details>
<summary><strong>1. Masters degree in Computational Linguistics</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](http://www.compling.uw.edu/)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：Masters degree in Computational Linguistics 可通过原始链接查看完整项目、论文或数据说明。

</details>

#### 代表作

<details>
<summary><strong>1. Masters degree in Computational Linguistics</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](http://www.compling.uw.edu/)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：Masters degree in Computational Linguistics 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>2. Natural Language Processing group&amp;nbsp;(CSE)</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](http://www.cs.washington.edu/research/nlp/)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：Natural Language Processing group&amp;nbsp;(CSE) 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>3. Research track · Natural Language Processing</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://nlp.cs.washington.edu/)

**摘要 / 项目说明**

这是团队的官方研究入口，可继续访问其研究方向、项目或论文列表；该条目不是单篇论文，因此不展示论文引用量。

</details>

</details>

<details>
<summary><img src="https://www.google.com/s2/favicons?domain_url=https%3A%2F%2Fweirdlab.cs.washington.edu&amp;sz=128" width="32" height="32" alt="UW Washington Embodied Intelligence and Robotics Development Lab (WEIRD) logo"> &nbsp;<strong>UW Washington Embodied Intelligence and Robotics Development Lab (WEIRD)</strong> · <code>verified</code></summary>

<br>

UW Washington Embodied Intelligence and Robotics Development Lab (WEIRD) 隶属于 University of Washington，是一支主要关注具身智能、机器人学习、计算机视觉等方向的高校实验室。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** University of Washington
- **主要方向：** 具身智能、机器人学习、计算机视觉、强化学习
- **负责人：** [负责人/成员页](https://weirdlab.cs.washington.edu/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://weirdlab.cs.washington.edu/)

#### 最近工作 · 日期待核验

<details>
<summary><strong>1. Paul G. Allen School for Computer Science and Engineering</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://www.cs.washington.edu)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：Paul G. Allen School for Computer Science and Engineering 可通过原始链接查看完整项目、论文或数据说明。

</details>

#### 代表作

<details>
<summary><strong>1. Paul G. Allen School for Computer Science and Engineering</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://www.cs.washington.edu)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：Paul G. Allen School for Computer Science and Engineering 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>2. Mateo Guaman Castro</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://www.mateoguaman.com/)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：Mateo Guaman Castro 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>3. Research track · Embodied Ai</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://weirdlab.cs.washington.edu/)

**摘要 / 项目说明**

这是团队的官方研究入口，可继续访问其研究方向、项目或论文列表；该条目不是单篇论文，因此不展示论文引用量。

</details>

</details>

### University of Illinois Urbana-Champaign（4）

<details>
<summary><img src="https://www.google.com/s2/favicons?domain_url=https%3A%2F%2Fnlp.cs.illinois.edu&amp;sz=128" width="32" height="32" alt="NLP @ UIUC logo"> &nbsp;<strong>NLP @ UIUC</strong> · <code>verified</code></summary>

<br>

NLP @ UIUC 隶属于 University of Illinois Urbana-Champaign，是一支主要关注自然语言处理、大语言模型、语音技术等方向的高校研究网络。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** University of Illinois Urbana-Champaign
- **主要方向：** 自然语言处理、大语言模型、语音技术、多模态学习
- **负责人：** [负责人/成员页](https://nlp.cs.illinois.edu/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://nlp.cs.illinois.edu/)

#### 最近工作 · 日期待核验

<details>
<summary><strong>1. Siebel School of Computing and Data Science</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://siebelschool.illinois.edu/)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：Siebel School of Computing and Data Science 可通过原始链接查看完整项目、论文或数据说明。

</details>

#### 代表作

<details>
<summary><strong>1. Siebel School of Computing and Data Science</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://siebelschool.illinois.edu/)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：Siebel School of Computing and Data Science 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>2. Mark Hasegawa-Johnson</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](http://www.ifp.illinois.edu/~hasegawa/)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：Mark Hasegawa-Johnson 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>3. Research track · Natural Language Processing</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://nlp.cs.illinois.edu/)

**摘要 / 项目说明**

这是团队的官方研究入口，可继续访问其研究方向、项目或论文列表；该条目不是单篇论文，因此不展示论文引用量。

</details>

</details>

<details>
<summary><img src="https://www.google.com/s2/favicons?domain_url=https%3A%2F%2Fblender.cs.illinois.edu&amp;sz=128" width="32" height="32" alt="UIUC BLENDER Lab logo"> &nbsp;<strong>UIUC BLENDER Lab</strong> · <code>provisional</code></summary>

<br>

UIUC BLENDER Lab 隶属于 University of Illinois Urbana-Champaign，是一支主要关注自然语言处理、信息抽取、知识推理等方向的高校实验室。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** University of Illinois Urbana-Champaign
- **主要方向：** 自然语言处理、信息抽取、知识推理、大语言模型
- **负责人：** [Heng Ji](https://blender.cs.illinois.edu/)（Director）
- **官方入口：** [官网](https://blender.cs.illinois.edu/)

#### 最近工作 · 日期待核验

<details>
<summary><strong>1. Research track · Natural Language Processing</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://blender.cs.illinois.edu/)

**摘要 / 项目说明**

这是团队的官方研究入口，可继续访问其研究方向、项目或论文列表；该条目不是单篇论文，因此不展示论文引用量。

</details>

#### 代表作

<details>
<summary><strong>1. Research track · Natural Language Processing</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://blender.cs.illinois.edu/)

**摘要 / 项目说明**

这是团队的官方研究入口，可继续访问其研究方向、项目或论文列表；该条目不是单篇论文，因此不展示论文引用量。

</details>

<details>
<summary><strong>2. Research track · Information Extraction</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://blender.cs.illinois.edu/)

**摘要 / 项目说明**

这是团队的官方研究入口，可继续访问其研究方向、项目或论文列表；该条目不是单篇论文，因此不展示论文引用量。

</details>

<details>
<summary><strong>3. Research track · Knowledge Reasoning</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://blender.cs.illinois.edu/)

**摘要 / 项目说明**

这是团队的官方研究入口，可继续访问其研究方向、项目或论文列表；该条目不是单篇论文，因此不展示论文引用量。

</details>

</details>

<details>
<summary><img src="https://www.google.com/s2/favicons?domain_url=https%3A%2F%2Fdais.cs.illinois.edu&amp;sz=128" width="32" height="32" alt="UIUC Data and Intelligent Systems (DAIS) logo"> &nbsp;<strong>UIUC Data and Intelligent Systems (DAIS)</strong> · <code>verified</code></summary>

<br>

UIUC Data and Intelligent Systems (DAIS) 隶属于 University of Illinois Urbana-Champaign，是一支主要关注数据挖掘、自然语言处理、机器学习等方向的高校研究网络。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** University of Illinois Urbana-Champaign
- **主要方向：** 数据挖掘、自然语言处理、机器学习、信息检索
- **负责人：** [负责人/成员页](https://dais.cs.illinois.edu/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://dais.cs.illinois.edu/)

#### 最近工作 · 日期待核验

<details>
<summary><strong>1. CS 277 – Algorithms and Data Structures for Data Science</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://courses.illinois.edu/search/schedule/2024/spring/CS/277)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：CS 277 – Algorithms and Data Structures for Data Science 可通过原始链接查看完整项目、论文或数据说明。

</details>

#### 代表作

<details>
<summary><strong>1. CS 277 – Algorithms and Data Structures for Data Science</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://courses.illinois.edu/search/schedule/2024/spring/CS/277)

**摘要 / 项目说明**

这是团队公开的代表性研究成果。目录中的公开说明为：CS 277 – Algorithms and Data Structures for Data Science 可通过原始链接查看完整项目、论文或数据说明。

</details>

<details>
<summary><strong>2. Research track · Data Mining</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://dais.cs.illinois.edu/)

**摘要 / 项目说明**

这是团队的官方研究入口，可继续访问其研究方向、项目或论文列表；该条目不是单篇论文，因此不展示论文引用量。

</details>

<details>
<summary><strong>3. Research track · Natural Language Processing</strong></summary>

- 引用量：非论文条目或尚未可靠匹配
- [论文 / 项目原始入口](https://dais.cs.illinois.edu/research/)

**摘要 / 项目说明**

这是团队的官方研究入口，可继续访问其研究方向、项目或论文列表；该条目不是单篇论文，因此不展示论文引用量。

</details>

</details>

<details>
<summary><img src="https://github.com/AI-secure.png?size=160" width="32" height="32" alt="UIUC Secure Learning Lab logo"> &nbsp;<strong>UIUC Secure Learning Lab</strong> · <code>verified</code></summary>

<br>

UIUC Secure Learning Lab 隶属于 University of Illinois Urbana-Champaign，是一支主要关注可信 AI、对抗机器学习、隐私保护等方向的高校实验室。本目录依据其官方主页、近期论文或研究型开源活动持续核验。

- **所属：** University of Illinois Urbana-Champaign
- **主要方向：** 可信 AI、对抗机器学习、隐私保护、大语言模型
- **负责人：** [负责人/成员页](https://aisecure.github.io/) — 官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。
- **官方入口：** [官网](https://aisecure.github.io/) · [GitHub](https://github.com/AI-secure)

#### 最近工作 · 2025

<details>
<summary><strong>3. UDora: A Unified Red Teaming Framework against LLM Agents by Dynamically Hijacking Their Own Reasoning</strong> · arXiv (Cornell University) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22UDora%3A+A+Unified+Red+Teaming+Framework+against+LLM+Agents+by+Dynamically+Hijacking+Their+Own+Reasoning%22)（未缓存未经核验的数字）
- GitHub Stars：**38**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2503.01908)

**基于 Abstract 的 TL;DR**

研究者开发了 UDora框架，旨在利用大型语言模型（LLM）进行红队攻击。该框架通过分析任务的推理过程，并在关键点处插入恶意扰动，导致LLM模型执行恶意行为或触发特定工具。实验结果表明UDora比现有方法更有效。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2503.01908"><img src="https://ar5iv.labs.arxiv.org/html/2503.01908/assets/x2.png" alt="Figure 2: Our UDora framework for attacking LLM agents. We explore two red-teaming scenarios: malicious environments , where the adversarial string is inserted into the observation, and malicious instructions , where the string is directly inserted into the adversary’s instruction. The optimization process involves: Step 1 , gathering the initial response from the LLM agent; Step 2 , identifying the optimal position in the response for noise insertion (e.g., target item name or function name); Step 3 , optimizing the string to maximize the likelihood of the noise within the modified response. These steps are repeated until the adversarial string successfully misleads the agent into performin" width="720"></a>

> Figure 2: Our UDora framework for attacking LLM agents. We explore two red-teaming scenarios: malicious environments , where the adversarial string is inserted into the observation, and malicious instructions , where the string is directly inserted into the adversary’s instruction. The optimization process involves: Step 1 , gathering the initial response from the LLM agent; Step 2 , identifying the optimal position in the response for noise insertion (e.g., target item name or function name); Step 3 , optimizing the string to maximize the likelihood of the noise within the modified response. These steps are repeated until the adversarial string successfully misleads the agent into performin
> 来源：[原论文](https://arxiv.org/abs/2503.01908)

</details>

#### 代表作

<details>
<summary><strong>1. AgentPoison: Red-teaming LLM Agents via Poisoning Memory or Knowledge Bases</strong> · arXiv (Cornell University) · 2024</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22AgentPoison%3A+Red-teaming+LLM+Agents+via+Poisoning+Memory+or+Knowledge+Bases%22)（未缓存未经核验的数字）
- GitHub Stars：**231**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2407.12784)

**基于 Abstract 的 TL;DR**

该研究提出了AgentPoison，一个针对LLM agents的红队攻击方法，通过污染其长期记忆或知识库来实现安全性和可信度的侵蚀。实验结果表明，AgentPoison在攻击三个现实世界的LLM agent中成功率高达80%以上，并且对正常性能的影响较小。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2407.12784"><img src="https://ar5iv.labs.arxiv.org/html/2407.12784/assets/x1.png" alt="Figure 1: An overview of the proposed AgentPoison framework. ( Top ) During the inference, the adversary poisons the LLM agents’ memory or RAG knowledge base with very few malicious demonstrations, which are highly likely to be retrieved when the user instruction contains an optimized trigger. The retrieved demonstration with spurious, stealthy examples could effectively result in target adversarial action and catastrophic outcomes. ( Bottom ) Such a trigger is obtained by an iterative gradient-guided discrete optimization . Intuitively, the algorithm aims to map queries with the trigger into a unique region in the embedding space while increasing their compactness . This will facilitate the" width="720"></a>

> Figure 1: An overview of the proposed AgentPoison framework. ( Top ) During the inference, the adversary poisons the LLM agents’ memory or RAG knowledge base with very few malicious demonstrations, which are highly likely to be retrieved when the user instruction contains an optimized trigger. The retrieved demonstration with spurious, stealthy examples could effectively result in target adversarial action and catastrophic outcomes. ( Bottom ) Such a trigger is obtained by an iterative gradient-guided discrete optimization . Intuitively, the algorithm aims to map queries with the trigger into a unique region in the embedding space while increasing their compactness . This will facilitate the
> 来源：[原论文](https://arxiv.org/abs/2407.12784)

</details>

<details>
<summary><strong>2. Differentially Private Synthetic Data via Foundation Model APIs 2: Text</strong> · arXiv (Cornell University) · 2024</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22Differentially+Private+Synthetic+Data+via+Foundation+Model+APIs+2%3A+Text%22)（未缓存未经核验的数字）
- GitHub Stars：**61**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2403.01749)

**基于 Abstract 的 TL;DR**

该研究探讨了如何生成合理的隐私保护文本数据。现有的方法需要使用大型语言模型（LLM）进行微调以获得隐私保护的文本数据。然而，这种方法对于商业性质的LLM和开源LLM来说不适用，而且计算资源消耗较多。该研究提出了一个名为Aug-PE的增强Private Evolution（PE）算法，用于生成具有形式隐私保护（Differential Privacy, DP）的文本数据。该算法仅依赖于语言模型的API接口，并且不需要进行任何模型训练。通过对三个benchmark数据集的实验，研究结果表明Aug-PE能够产生具有竞争性高的DP合理文本数据，这意味着仅靠LLM的API接口就可以生成高质量的隐私保护文本数据，从而为更广泛的隐私保护语言模型应用提供了便捷途径。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2403.01749"><img src="https://ar5iv.labs.arxiv.org/html/2403.01749/assets/x1.png" alt="Figure 1: Instead of finetuning LLMs with DP-SGD to generate synthetic text, our Aug-PE only requires inference APIs of LLMs. Aug-PE works with the latest open-source LLMs and API-based LLMs to generate DP synthetic text with improved utility on OpenReview dataset, where DP-SGD finetuning is either hard to implement or infeasible." width="720"></a>

> Figure 1: Instead of finetuning LLMs with DP-SGD to generate synthetic text, our Aug-PE only requires inference APIs of LLMs. Aug-PE works with the latest open-source LLMs and API-based LLMs to generate DP synthetic text with improved utility on OpenReview dataset, where DP-SGD finetuning is either hard to implement or infeasible.
> 来源：[原论文](https://arxiv.org/abs/2403.01749)

</details>

<details>
<summary><strong>3. UDora: A Unified Red Teaming Framework against LLM Agents by Dynamically Hijacking Their Own Reasoning</strong> · arXiv (Cornell University) · 2025</summary>

- 引用量：[在 Google Scholar 查看](https://scholar.google.com/scholar?hl=en&q=%22UDora%3A+A+Unified+Red+Teaming+Framework+against+LLM+Agents+by+Dynamically+Hijacking+Their+Own+Reasoning%22)（未缓存未经核验的数字）
- GitHub Stars：**38**（与论文引用量分开统计）
- [论文 / 项目原始入口](https://arxiv.org/abs/2503.01908)

**基于 Abstract 的 TL;DR**

研究者开发了 UDora框架，旨在利用大型语言模型（LLM）进行红队攻击。该框架通过分析任务的推理过程，并在关键点处插入恶意扰动，导致LLM模型执行恶意行为或触发特定工具。实验结果表明UDora比现有方法更有效。

**原文关键流程 / 方法图**

<a href="https://arxiv.org/abs/2503.01908"><img src="https://ar5iv.labs.arxiv.org/html/2503.01908/assets/x2.png" alt="Figure 2: Our UDora framework for attacking LLM agents. We explore two red-teaming scenarios: malicious environments , where the adversarial string is inserted into the observation, and malicious instructions , where the string is directly inserted into the adversary’s instruction. The optimization process involves: Step 1 , gathering the initial response from the LLM agent; Step 2 , identifying the optimal position in the response for noise insertion (e.g., target item name or function name); Step 3 , optimizing the string to maximize the likelihood of the noise within the modified response. These steps are repeated until the adversarial string successfully misleads the agent into performin" width="720"></a>

> Figure 2: Our UDora framework for attacking LLM agents. We explore two red-teaming scenarios: malicious environments , where the adversarial string is inserted into the observation, and malicious instructions , where the string is directly inserted into the adversary’s instruction. The optimization process involves: Step 1 , gathering the initial response from the LLM agent; Step 2 , identifying the optimal position in the response for noise insertion (e.g., target item name or function name); Step 3 , optimizing the string to maximize the likelihood of the noise within the modified response. These steps are repeated until the adversarial string successfully misleads the agent into performin
> 来源：[原论文](https://arxiv.org/abs/2503.01908)

</details>

</details>

## 数据与维护

- 团队主数据：[`data/research-teams.yaml`](../data/research-teams.yaml)
- Logo、介绍与负责人：[`data/team-profiles.yaml`](../data/team-profiles.yaml)
- 代表成果：[`data/representative-works.yaml`](../data/representative-works.yaml)
- 论文摘要、引用与图表：[`data/work-metadata.yaml`](../data/work-metadata.yaml)
- 收录标准：[`docs/TEAM_COLLECTION_METHOD.md`](TEAM_COLLECTION_METHOD.md)
