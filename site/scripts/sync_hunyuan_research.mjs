import { mkdir, writeFile } from "node:fs/promises";
import { dirname, resolve } from "node:path";

const checkedAt = "2026-07-31";
const outputPath = resolve("site/data/hunyuan-research.json");

const paperCatalog = [
  {
    arxivId: "2607.14187",
    topic: "具身智能",
    venue: "arXiv",
    repo: "Hy-Embodied-RxBrain-1.0",
    summary: "把语言—视觉推理、世界状态想象与子目标规划统一到一个具身认知模型中。",
  },
  {
    arxivId: "2607.12894",
    topic: "具身智能",
    venue: "arXiv",
    repo: "HY-Embodied",
    summary: "面向物理世界 Agent 的具身基础模型，强化动作推理、情境适应与交互能力。",
  },
  {
    arxivId: "2607.04884",
    topic: "原生多模态",
    venue: "arXiv",
    repo: "HunyuanOCR",
    summary: "轻量端到端 OCR VLM，覆盖文档解析、文字定位、信息抽取与图像翻译。",
  },
  {
    arxivId: "2607.02980",
    topic: "基础模型与推理",
    venue: "arXiv",
    repo: "HiLS-Attention",
    summary: "通过层次化稀疏注意力降低长上下文计算成本。",
  },
  {
    arxivId: "2605.22064",
    topic: "基础模型与推理",
    venue: "Technical Report",
    repo: "Hy-MT2",
    summary: "以 1.8B、7B 与 30B-A3B 三档快速思考模型覆盖 33 种语言翻译。",
  },
  {
    title: "WorldMirror: Fast and Universal 3D Reconstruction for Versatile Tasks",
    topic: "3D 与世界模型",
    venue: "ICML 2026",
    repo: "HunyuanWorld-Mirror",
    publishedAt: "2026-05-20",
    paperUrl:
      "https://3d-models.hunyuan.tencent.com/world/worldMirror1_0/HYWorld_Mirror_Tech_Report.pdf",
    authors: [],
    abstract: null,
    summary: "以多模态先验提示和统一几何预测覆盖多类 3D 重建任务；公开页未提供可抽取 Abstract。",
  },
  {
    arxivId: "2604.14268",
    topic: "3D 与世界模型",
    venue: "arXiv",
    repo: "HY-World-2.0",
    summary: "统一文本、单图、多图与视频输入，生成或重建 mesh / 3DGS 世界。",
  },
  {
    arxivId: "2507.21802",
    topic: "对齐、Agent 与评测",
    venue: "ECCV 2026",
    repo: "MixGRPO",
    summary: "用混合 ODE–SDE 采样提升 Flow 模型 GRPO 后训练效率。",
  },
  {
    arxivId: "2603.10702",
    topic: "原生多模态",
    venue: "arXiv",
    repo: "UniCom",
    summary: "用压缩连续语义表征连接多模态理解与生成。",
  },
  {
    arxivId: "2512.23464",
    topic: "3D 与世界模型",
    venue: "Technical Report",
    repo: "HY-Motion-1.0",
    summary: "把文本到 3D 人体动作的 DiT + Flow Matching 扩展至十亿参数规模。",
  },
  {
    arxivId: "2512.14614",
    topic: "3D 与世界模型",
    venue: "Technical Report",
    repo: "HY-WorldPlay",
    summary: "WorldPlay 将世界模型推进到实时流式交互与长期几何一致性。",
  },
  {
    arxivId: "2511.18870",
    topic: "视频、数字人与声音",
    venue: "Technical Report",
    repo: "HunyuanVideo-1.5",
    summary: "以 5B 轻量底座降低视频生成门槛，并增强文本渲染与部署效率。",
  },
  {
    arxivId: "2509.23951",
    topic: "原生多模态",
    venue: "Technical Report",
    repo: "HunyuanImage-3.0",
    summary: "在自回归框架中原生统一多模态理解、文生图与图生图。",
  },
  {
    arxivId: "2509.05209",
    topic: "基础模型与推理",
    venue: "Technical Report",
    repo: "Hunyuan-MT",
    summary: "面向真实业务条件构建多语言翻译模型与配套评测体系。",
  },
  {
    arxivId: "2508.16930",
    topic: "视频、数字人与声音",
    venue: "Technical Report",
    repo: "HunyuanVideo-Foley",
    summary: "从视频与文本条件端到端生成时序同步的高保真拟音。",
  },
  {
    arxivId: "2507.21809",
    topic: "3D 与世界模型",
    venue: "Technical Report",
    repo: "HunyuanWorld-1.0",
    summary: "从文字或单图生成可探索 3D 场景，研究对象由资产扩展到世界。",
  },
  {
    arxivId: "2506.17201",
    topic: "3D 与世界模型",
    venue: "Technical Report",
    repo: "Hunyuan-GameCraft-1.0",
    summary: "以混合历史条件支持高动态、可控制的交互式游戏视频生成。",
  },
  {
    arxivId: "2506.15442",
    topic: "3D 与世界模型",
    venue: "Technical Report",
    repo: "Hunyuan3D-2.1",
    summary: "把图生 3D 推进到带生产级 PBR 材质的高保真资产。",
  },
  {
    arxivId: "2505.20156",
    topic: "视频、数字人与声音",
    venue: "Technical Report",
    repo: "HunyuanVideo-Avatar",
    summary: "把音频驱动的人体动画扩展到多人、全身与复杂场景。",
  },
  {
    arxivId: "2505.04512",
    topic: "视频、数字人与声音",
    venue: "Technical Report",
    repo: "HunyuanCustom",
    summary: "以图像、音频、文本和姿态等多模态条件控制个性化视频。",
  },
  {
    arxivId: "2503.18860",
    topic: "视频、数字人与声音",
    venue: "CVPR 2025",
    repo: "HunyuanPortrait",
    summary: "用隐式条件控制提升肖像动画的身份保持与运动表现。",
  },
  {
    arxivId: "2501.12202",
    topic: "3D 与世界模型",
    venue: "Technical Report",
    repo: "Hunyuan3D-2",
    summary: "以形状—纹理两阶段管线生成高分辨率带纹理 3D 资产。",
  },
  {
    arxivId: "2412.03603",
    topic: "视频、数字人与声音",
    venue: "Technical Report",
    repo: "HunyuanVideo",
    summary: "13B 视频生成底座，后续衍生 I2V、定制、Avatar 与 Foley 项目家族。",
  },
  {
    arxivId: "2411.02265",
    topic: "基础模型与推理",
    venue: "Technical Report",
    repo: "Tencent-Hunyuan-Large",
    summary: "389B 总参数、52B 激活参数的 MoE，聚焦长上下文与推理效率。",
  },
  {
    arxivId: "2411.02293",
    topic: "3D 与世界模型",
    venue: "Technical Report",
    repo: "Hunyuan3D-1",
    summary: "统一文生 3D 与图生 3D，奠定混元 3D 模型家族基础。",
  },
  {
    arxivId: "2405.08748",
    topic: "原生多模态",
    venue: "Technical Report",
    repo: "HunyuanDiT",
    summary: "以双文本编码器和细粒度中文理解切入开源文生图。",
  },
];

const people = [
  {
    name: "Zhaopeng Tu",
    nameZh: "涂兆鹏",
    role: "Head of Digital Human Algorithms · Tencent Hunyuan Multimodal Department",
    focus: "Companion Agents · LLM Reasoning · Machine Translation",
    url: "https://tuzhaopeng.github.io/publications.html",
    evidence: "个人主页当前任职",
  },
  {
    name: "Zhuo Chen",
    nameZh: "陈卓",
    role: "Research Expert · Hunyuan3D, Tencent",
    focus: "3D Foundation Models · 3D Art Pipeline · Animation",
    url: "https://chenzhuooooo.github.io/",
    evidence: "个人主页当前任职",
  },
  {
    name: "Shuai Shao",
    nameZh: "邵帅",
    role: "Principal Researcher · Tencent Hunyuan",
    focus: "Multimodal Content · AIGC · AI Agents",
    url: "https://www.sshao.com/",
    evidence: "个人主页当前任职",
  },
  {
    name: "Shengpeng Ji",
    nameZh: "纪圣鹏",
    role: "Senior Research Scientist · Tencent Hunyuan LLM Team",
    focus: "Speech · Large Language Models",
    url: "https://novateurjsp.github.io/",
    evidence: "个人主页当前任职",
  },
  {
    name: "Yichen Li",
    nameZh: "李奕辰",
    role: "Research Scientist · Hunyuan @ Tencent",
    focus: "Agentic Coding · Software Engineering",
    url: "https://yichenli00.github.io/",
    evidence: "个人主页当前任职",
  },
  {
    name: "Kenkun Liu",
    nameZh: "刘垦坤",
    role: "Senior Researcher · Tencent Hunyuan",
    focus: "Multimodal Foundation Models · 3D",
    url: "https://kenkunliu.github.io/PersonalPage/",
    evidence: "个人主页当前任职",
  },
];

const projectCatalog = [
  { repo: "Hy3", kind: "基础模型", tags: ["MoE", "Reasoning", "Agent"] },
  { repo: "HunyuanImage-3.0", kind: "原生多模态模型", tags: ["Image", "Understanding", "Generation"] },
  { repo: "HunyuanVideo-1.5", kind: "视频模型", tags: ["T2V", "I2V", "5B"] },
  { repo: "Hunyuan3D-2.1", kind: "3D 模型", tags: ["Image-to-3D", "PBR", "Asset"] },
  { repo: "HY-World-2.0", kind: "世界模型", tags: ["World Generation", "Reconstruction", "3DGS"] },
  { repo: "HY-Embodied", kind: "具身基础模型", tags: ["VLM", "Embodied Agent", "Reasoning"] },
  { repo: "UniRL", kind: "训练框架", tags: ["Multimodal RL", "GRPO", "Infrastructure"] },
  { repo: "CL-bench", kind: "Benchmark", tags: ["Context Learning", "Evaluation"] },
];

const keywordCatalog = [
  { label: "3D / world", terms: ["3d", "world model", "world generation", "world reconstruction", "mesh"] },
  { label: "video generation", terms: ["video generation", "video diffusion", "image-to-video", "human animation"] },
  { label: "multimodal", terms: ["multimodal", "vision-language", "visual-language"] },
  { label: "diffusion / flow", terms: ["diffusion", "flow matching", "rectified flow"] },
  { label: "reinforcement learning", terms: ["reinforcement learning", "grpo", "policy optimization"] },
  { label: "reasoning / agent", terms: ["reasoning", "agent", "planning"] },
  { label: "image generation", terms: ["image generation", "text-to-image", "image-to-image"] },
  { label: "embodied intelligence", terms: ["embodied", "robot", "physical world"] },
  { label: "efficient inference", terms: ["efficient", "inference", "lightweight", "sparse attention"] },
  { label: "alignment / preference", terms: ["alignment", "preference", "reward"] },
];

function decodeHtml(value = "") {
  return value
    .replace(/&#(\d+);/g, (_, code) => String.fromCodePoint(Number(code)))
    .replace(/&#x([0-9a-f]+);/gi, (_, code) => String.fromCodePoint(Number.parseInt(code, 16)))
    .replaceAll("&amp;", "&")
    .replaceAll("&quot;", '"')
    .replaceAll("&#39;", "'")
    .replaceAll("&lt;", "<")
    .replaceAll("&gt;", ">")
    .replace(/\s+/g, " ")
    .trim();
}

function metaValues(html, name) {
  const pattern = new RegExp(
    `<meta\\s+name=["']${name}["']\\s+content=["']([^"']*)["'][^>]*>`,
    "gi",
  );
  return [...html.matchAll(pattern)].map((match) => decodeHtml(match[1]));
}

async function fetchArxivPaper(entry) {
  if (!entry.arxivId) return entry;

  const response = await fetch(`https://arxiv.org/abs/${entry.arxivId}`, {
    headers: { "User-Agent": "Awesome-Team-Hunyuan-Snapshot/1.0" },
  });
  if (!response.ok) throw new Error(`arXiv ${entry.arxivId}: ${response.status}`);
  const html = await response.text();
  const dateValue = metaValues(html, "citation_date")[0] ?? "";

  return {
    ...entry,
    title: metaValues(html, "citation_title")[0] ?? entry.title,
    authors: metaValues(html, "citation_author"),
    abstract: metaValues(html, "citation_abstract")[0] ?? null,
    publishedAt: dateValue.replaceAll("/", "-") || null,
    paperUrl: `https://arxiv.org/abs/${entry.arxivId}`,
  };
}

async function mapWithConcurrency(items, concurrency, mapper) {
  const output = new Array(items.length);
  let cursor = 0;

  async function worker() {
    while (cursor < items.length) {
      const index = cursor++;
      output[index] = await mapper(items[index], index);
    }
  }

  await Promise.all(Array.from({ length: concurrency }, worker));
  return output;
}

async function fetchRepositories() {
  const response = await fetch(
    "https://api.github.com/orgs/Tencent-Hunyuan/repos?per_page=100&sort=updated&direction=desc",
    {
      headers: {
        Accept: "application/vnd.github+json",
        "User-Agent": "Awesome-Team-Hunyuan-Snapshot/1.0",
      },
    },
  );
  if (!response.ok) throw new Error(`GitHub repositories: ${response.status}`);
  return response.json();
}

const [papers, repositories] = await Promise.all([
  mapWithConcurrency(paperCatalog, 4, fetchArxivPaper),
  fetchRepositories(),
]);

const repoByName = new Map(repositories.map((repo) => [repo.name, repo]));
const projects = projectCatalog.map((project) => {
  const repo = repoByName.get(project.repo);
  return {
    ...project,
    name: project.repo,
    description: repo?.description ?? "",
    url: repo?.html_url ?? `https://github.com/Tencent-Hunyuan/${project.repo}`,
    stars: repo?.stargazers_count ?? 0,
    createdAt: repo?.created_at ?? null,
    pushedAt: repo?.pushed_at ?? null,
  };
});

const abstracts = papers.filter((paper) => paper.abstract);
const keywords = keywordCatalog
  .map((keyword) => {
    const count = abstracts.filter((paper) => {
      const haystack = `${paper.title} ${paper.abstract}`.toLowerCase();
      return keyword.terms.some((term) => haystack.includes(term));
    }).length;
    return {
      ...keyword,
      count,
      coverage: abstracts.length ? Math.round((count / abstracts.length) * 100) : 0,
    };
  })
  .sort((a, b) => b.count - a.count || a.label.localeCompare(b.label));

const recentBoundary = new Date(`${checkedAt}T23:59:59Z`);
recentBoundary.setUTCDate(recentBoundary.getUTCDate() - 90);
const recentRepositories = repositories
  .filter((repo) => new Date(repo.pushed_at) >= recentBoundary)
  .sort((a, b) => new Date(b.pushed_at) - new Date(a.pushed_at));

const data = {
  team: {
    name: "Tencent Hunyuan",
    nameZh: "腾讯混元",
    parent: "Tencent",
    teamType: "基础模型研发体系",
    officialUrl: "https://hunyuan.tencent.com/",
    githubUrl: "https://github.com/Tencent-Hunyuan",
    aliases: ["Tencent Hunyuan", "Tencent HY", "腾讯混元", "Tencent Hy Team"],
    boundary:
      "以腾讯混元官方主页与 Tencent-Hunyuan GitHub 组织为公开研究边界；页面中的方向是研究分类，不代表内部部门。",
  },
  scope: {
    startDate: "2024-01-01",
    checkedAt,
    activityWindowDays: 90,
    description: "可核验公开研究工作集，不是完整内部成员或论文名录。",
  },
  counts: {
    papers: papers.length,
    papersWithAbstracts: abstracts.length,
    githubRepositories: repositories.length,
    recentRepositories: recentRepositories.length,
    publicProjects: projects.length,
    publicPeople: people.length,
  },
  activity: {
    latestRepositoryPush: recentRepositories[0]
      ? {
          name: recentRepositories[0].name,
          date: recentRepositories[0].pushed_at,
          url: recentRepositories[0].html_url,
        }
      : null,
    recentRepositories: recentRepositories.slice(0, 8).map((repo) => ({
      name: repo.name,
      description: repo.description ?? "",
      pushedAt: repo.pushed_at,
      url: repo.html_url,
    })),
  },
  directions: [
    {
      id: "foundation",
      label: "基础模型与推理",
      labelEn: "Foundation & Reasoning",
      description: "MoE、长上下文、代码、推理效率与 Agent 能力。",
    },
    {
      id: "multimodal",
      label: "原生多模态",
      labelEn: "Native Multimodal",
      description: "统一视觉理解、图像生成、OCR 与连续语义表征。",
    },
    {
      id: "video",
      label: "视频、数字人与声音",
      labelEn: "Video, Avatar & Audio",
      description: "T2V、I2V、可控视频、数字人动画与视频拟音。",
    },
    {
      id: "world",
      label: "3D 与世界模型",
      labelEn: "3D & World Models",
      description: "资产生成、PBR 材质、可探索世界与 3D 重建。",
    },
    {
      id: "alignment",
      label: "对齐、Agent 与评测",
      labelEn: "Alignment, Agents & Evals",
      description: "多模态强化学习、奖励学习、代码与上下文评测。",
    },
    {
      id: "embodied",
      label: "具身智能",
      labelEn: "Embodied Intelligence",
      description: "具身 VLM、视觉—语言—行动、物理预测与机器人系统。",
    },
  ],
  people,
  projects,
  papers: papers.map((paper) => ({
    ...paper,
    codeUrl: `https://github.com/Tencent-Hunyuan/${paper.repo}`,
    attribution: {
      kind: "official_team_release",
      label: "官方团队仓库发布",
      sourceUrl: `https://github.com/Tencent-Hunyuan/${paper.repo}`,
      checkedAt,
    },
  })),
  keywords,
};

await mkdir(dirname(outputPath), { recursive: true });
await writeFile(outputPath, `${JSON.stringify(data, null, 2)}\n`, "utf8");
console.log(
  `Wrote ${outputPath}: ${papers.length} papers, ${abstracts.length} abstracts, ${repositories.length} repositories.`,
);
