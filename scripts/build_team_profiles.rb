#!/usr/bin/env ruby
# frozen_string_literal: true

require "uri"
require "yaml"

ROOT = File.expand_path("..", __dir__)
PARENTS_PATH = File.join(ROOT, "data", "seed-parents.yaml")
TEAMS_PATH = File.join(ROOT, "data", "research-teams.yaml")

FOCUS_ZH = {
  "foundation-models" => "基础模型",
  "large-language-models" => "大语言模型",
  "multimodal" => "多模态学习",
  "video-generation" => "视频生成",
  "image-generation" => "图像生成",
  "controllable-generation" => "可控生成",
  "natural-language-processing" => "自然语言处理",
  "computer-vision" => "计算机视觉",
  "machine-learning" => "机器学习",
  "agents" => "智能体",
  "robotics" => "机器人",
  "embodied-ai" => "具身智能",
  "speech" => "语音技术",
  "ai-systems" => "AI 系统",
  "ai-for-science" => "AI for Science",
  "open-models" => "开放模型",
  "model-evaluation" => "模型评测",
  "information-retrieval" => "信息检索",
  "graphics" => "计算机图形学",
  "game-ai" => "游戏 AI",
  "generative-ai" => "生成式 AI",
  "knowledge-enhanced-learning" => "知识增强学习",
  "deep-learning-frameworks" => "深度学习框架",
  "decision-making" => "决策学习",
  "reinforcement-learning" => "强化学习",
  "recommendation-systems" => "推荐系统",
  "data-mining" => "数据挖掘",
  "human-computer-interaction" => "人机交互",
  "security" => "AI 安全",
  "ai-security" => "AI 安全",
  "medical-ai" => "医疗 AI",
  "healthcare" => "医疗健康",
  "autonomous-driving" => "自动驾驶",
  "3d-vision" => "三维视觉",
  "world-models" => "世界模型",
  "3d-generation" => "三维生成",
  "adoption" => "AI 应用与采用",
  "adversarial-machine-learning" => "对抗机器学习",
  "aerial-robotics" => "空中机器人",
  "agent-security" => "智能体安全",
  "ai-for-public-good" => "AI 公益",
  "ai-safety" => "AI 安全与对齐",
  "alignment" => "AI 对齐",
  "artificial-intelligence" => "人工智能",
  "audio-generation" => "音频生成",
  "augmented-reality" => "增强现实",
  "autonomous-discovery" => "自主科学发现",
  "autonomous-systems" => "自主系统",
  "biology" => "计算生物学",
  "biosecurity" => "生物安全",
  "causal-learning" => "因果学习",
  "chemistry" => "计算化学",
  "cloud-computing" => "云计算",
  "code-generation" => "代码生成",
  "cognitive-ai" => "认知智能",
  "cognitive-reasoning" => "认知推理",
  "computational-neuroscience" => "计算神经科学",
  "computational-photography" => "计算摄影",
  "content-generation" => "内容生成",
  "continual-learning" => "持续学习",
  "control" => "控制理论",
  "conversational-ai" => "对话智能",
  "cybersecurity" => "网络安全",
  "data-efficient-learning" => "数据高效学习",
  "data-science" => "数据科学",
  "databases" => "数据库",
  "deep-learning" => "深度学习",
  "dexterous-manipulation" => "灵巧操作",
  "digital-human" => "数字人",
  "distributed-ai" => "分布式智能",
  "distributed-computing" => "分布式计算",
  "distributed-training" => "分布式训练",
  "economics-of-ai" => "AI 经济学",
  "efficient-ai" => "高效 AI",
  "evaluation" => "模型评估",
  "evolutionary-computation" => "进化计算",
  "explainable-ai" => "可解释 AI",
  "graph-learning" => "图学习",
  "human-ai-collaboration" => "人机协作",
  "human-compatible-ai" => "人类兼容 AI",
  "human-motion" => "人体运动建模",
  "human-robot-interaction" => "人机交互与协作",
  "inference" => "模型推理",
  "information-extraction" => "信息抽取",
  "intelligent-systems" => "智能系统",
  "interactive-agents" => "交互式智能体",
  "knowledge-graphs" => "知识图谱",
  "knowledge-reasoning" => "知识推理",
  "labor" => "AI 与劳动力",
  "language" => "语言智能",
  "learning-theory" => "学习理论",
  "legged-robotics" => "足式机器人",
  "lifelong-learning" => "终身学习",
  "llm-training" => "大模型训练",
  "locomotion" => "机器人运动",
  "machine-learning-frameworks" => "机器学习框架",
  "machine-translation" => "机器翻译",
  "mechanistic-interpretability" => "机制可解释性",
  "medical-nlp" => "医疗自然语言处理",
  "model-analysis" => "模型分析",
  "model-behavior" => "模型行为",
  "model-compression" => "模型压缩",
  "model-editing" => "模型编辑",
  "model-merging" => "模型融合",
  "model-serving" => "模型服务",
  "multi-agent-systems" => "多智能体系统",
  "multilingual-ai" => "多语言 AI",
  "multimodal-perception" => "多模态感知",
  "multimodal-reasoning" => "多模态推理",
  "navigation" => "机器人导航",
  "on-device-ai" => "端侧 AI",
  "optimization" => "优化方法",
  "pathology" => "计算病理",
  "perception" => "机器感知",
  "physical-ai" => "物理世界 AI",
  "physical-intelligence" => "物理智能",
  "planning" => "规划与决策",
  "privacy" => "隐私保护",
  "psycholinguistics" => "心理语言学",
  "reasoning" => "机器推理",
  "recommendation" => "推荐系统",
  "red-teaming" => "红队评测",
  "representation-learning" => "表征学习",
  "responsible-ai" => "负责任 AI",
  "retrieval-augmented-generation" => "检索增强生成",
  "robot-learning" => "机器人学习",
  "safe-autonomy" => "安全自主系统",
  "safety" => "AI 安全",
  "simulation" => "仿真",
  "slam" => "同步定位与建图",
  "social-computing" => "社会计算",
  "societal-impacts" => "AI 社会影响",
  "spatial-ai" => "空间智能",
  "statistical-learning" => "统计学习",
  "surgical-robotics" => "手术机器人",
  "tactile-perception" => "触觉感知",
  "transparency" => "AI 透明度",
  "trustworthy-ai" => "可信 AI",
  "video-language" => "视频语言学习",
  "video-understanding" => "视频理解",
  "vision-language-action" => "视觉—语言—动作模型",
  "vision-language-models" => "视觉语言模型",
  "visual-compression" => "视觉压缩"
}.freeze

TYPE_ZH = {
  "corporate_research_lab" => "企业研究实验室",
  "corporate_research_network" => "企业研究网络",
  "corporate_research_team" => "企业研究团队",
  "foundation_model_team" => "基础模型团队",
  "frontier_ai_lab" => "前沿 AI 实验室",
  "frontier_ai_research_team" => "前沿 AI 研究团队",
  "research_engineering_team" => "研究工程团队",
  "research_platform" => "研究平台",
  "university_industry_joint_lab" => "校企联合实验室",
  "university_research_center" => "高校研究中心",
  "university_research_department" => "高校研究院系",
  "university_research_group" => "高校研究组",
  "university_research_institute" => "高校研究院",
  "university_research_lab" => "高校实验室",
  "university_research_network" => "高校研究网络"
}.freeze

# Only include leaders whose role and official/person page have been manually verified.
LEADERS = {
  "mit-csail" => [
    { "name" => "Daniela Rus", "role" => "Director", "url" => "https://www.csail.mit.edu/person/daniela-rus" }
  ],
  "mit-cbmm" => [
    { "name" => "Tomaso Poggio", "role" => "Co-Director", "url" => "https://cbmm.mit.edu/about/people/poggio" }
  ],
  "stanford-crfm" => [
    { "name" => "Percy Liang", "role" => "Director", "url" => "https://cs.stanford.edu/~pliang/" }
  ],
  "stanford-iliad" => [
    { "name" => "Dorsa Sadigh", "role" => "Faculty Lead", "url" => "https://dorsa.fyi/" }
  ],
  "berkeley-rail" => [
    { "name" => "Sergey Levine", "role" => "Faculty Lead", "url" => "https://people.eecs.berkeley.edu/~svlevine/" }
  ],
  "berkeley-chai" => [
    { "name" => "Stuart Russell", "role" => "Founder and Faculty Director", "url" => "https://people.eecs.berkeley.edu/~russell/" }
  ],
  "pku-camera-intelligence" => [
    { "name" => "Boxin Shi", "role" => "Principal Investigator", "url" => "https://camera.pku.edu.cn/team" }
  ],
  "nju-lamda" => [
    { "name" => "Zhi-Hua Zhou", "role" => "Head of LAMDA", "url" => "https://cs.nju.edu.cn/zhouzh/" }
  ],
  "umd-gamma" => [
    { "name" => "Dinesh Manocha", "role" => "Director", "url" => "https://www.cs.umd.edu/people/dmanocha" }
  ],
  "cuhk-language-processing-lab" => [
    { "name" => "Zhenguang Cai", "role" => "Lab Director", "url" => "https://cuhklpl.github.io/" }
  ],
  "uiuc-blender-lab" => [
    { "name" => "Heng Ji", "role" => "Director", "url" => "https://blender.cs.illinois.edu/" }
  ]
}.freeze

def github_owner(url)
  uri = URI.parse(url)
  return unless uri.host == "github.com"

  uri.path.split("/").reject(&:empty?).first
rescue URI::InvalidURIError
  nil
end

def favicon_url(url)
  uri = URI.parse(url)
  return unless uri.host

  "https://www.google.com/s2/favicons?domain_url=#{URI.encode_www_form_component("#{uri.scheme}://#{uri.host}")}&sz=128"
rescue URI::InvalidURIError
  nil
end

parents_data = YAML.load_file(PARENTS_PATH)
teams_data = YAML.load_file(TEAMS_PATH)
parents = %w[companies frontier_ai_companies universities].flat_map { |key| parents_data.fetch(key) }
parent_by_id = parents.to_h { |parent| [parent.fetch("id"), parent] }

profiles = {}

teams_data.fetch("teams").each do |team|
  parent = parent_by_id.fetch(team.fetch("parent_id"))
  github_page = team.fetch("homepages").find { |page| page.fetch("kind") == "github" }
  official_page = team.fetch("homepages").find { |page| page.fetch("kind") == "official" } || team.fetch("homepages").first
  owner = github_owner(github_page&.fetch("url", nil).to_s)
  logo = if owner
           {
             "url" => "https://github.com/#{owner}.png?size=160",
             "kind" => "github_avatar",
             "source_url" => github_page.fetch("url")
           }
         else
           {
             "url" => favicon_url(official_page.fetch("url")),
             "kind" => "official_site_icon",
             "source_url" => official_page.fetch("url")
           }
         end

  directions = team.fetch("focus").map { |focus| FOCUS_ZH.fetch(focus, focus.split("-").join(" ")) }
  type_name = TYPE_ZH.fetch(team.fetch("team_type"), team.fetch("team_type").split("_").join(" "))
  intro = "#{team.fetch('name')} 隶属于 #{parent.fetch('name')}，是一支主要关注#{directions.first(3).join('、')}#{directions.length > 3 ? '等方向' : ''}的#{type_name}。本目录依据其官方主页、近期论文或研究型开源活动持续核验。"
  leaders = LEADERS.fetch(team.fetch("id"), [])

  profiles[team.fetch("id")] = {
    "logo" => logo,
    "introduction" => intro,
    "directions_zh" => directions,
    "leaders" => leaders,
    "leadership_note" => if leaders.empty?
                           "官方公开页面未明确单一负责人；请通过团队主页查看研究负责人或成员列表。"
                         else
                           nil
                         end,
    "leadership_source" => official_page.fetch("url")
  }.compact
end

payload = {
  "schema_version" => 1,
  "last_updated" => teams_data.fetch("last_updated").to_s,
  "notes" => [
    "Logo priority: team GitHub avatar, then the icon of the official team site.",
    "Leader names are only included when a role and official/person page were manually verified.",
    "A leadership note is shown instead of guessing when no single public lead is identifiable."
  ],
  "teams" => profiles
}

puts payload.to_yaml(line_width: -1)
