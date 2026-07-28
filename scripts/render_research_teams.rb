#!/usr/bin/env ruby

require "yaml"

ROOT = File.expand_path("..", __dir__)
PARENTS_PATH = File.join(ROOT, "data", "seed-parents.yaml")
TEAMS_PATH = File.join(ROOT, "data", "research-teams.yaml")
OUTPUT_PATH = File.join(ROOT, "docs", "RESEARCH_TEAMS.md")

parents_data = YAML.load_file(PARENTS_PATH)
teams_data = YAML.load_file(TEAMS_PATH)

sections = [
  ["中国公司", parents_data.fetch("companies").select { |x| x["region"] == "CN-mainland" }],
  ["中国前沿 AI 公司", parents_data.fetch("frontier_ai_companies").select { |x| x["region"] == "CN-mainland" }],
  ["美国公司", parents_data.fetch("companies").select { |x| x["region"] == "US" }],
  ["美国前沿 AI 公司", parents_data.fetch("frontier_ai_companies").select { |x| x["region"] == "US" }],
  ["中国 C9", parents_data.fetch("universities").select { |x| x["group"] == "C9" }],
  ["港科广", parents_data.fetch("universities").select { |x| x["group"] == "HKUST-GZ" }],
  ["香港三校", parents_data.fetch("universities").select { |x| x["group"] == "HK3" }],
  ["新加坡两校", parents_data.fetch("universities").select { |x| x["group"] == "SG2" }],
  ["美国 AI 核心高校", parents_data.fetch("universities").select { |x| x["group"] == "US-AI-Core" }]
]

teams_by_parent = teams_data.fetch("teams").group_by { |x| x.fetch("parent_id") }
status_counts = teams_data.fetch("teams").group_by { |x| x.fetch("status") }.transform_values(&:size)

def escape_cell(value)
  value.to_s.gsub("|", "\\|").gsub("\n", " ")
end

def links_for(team)
  team.fetch("homepages").map do |entry|
    label = {
      "github" => "GitHub",
      "official" => "官网",
      "huggingface" => "Hugging Face"
    }.fetch(entry.fetch("kind"), entry.fetch("kind"))
    "[#{label}](#{entry.fetch("url")})"
  end.join(" · ")
end

lines = []
lines << "# AI 科研团队目录"
lines << ""
lines << "更新日期：#{teams_data.fetch("last_updated")}"
lines << ""
lines << "本目录仅覆盖 [`data/seed-parents.yaml`](../data/seed-parents.yaml) 中的 46 个母体机构，并按 [`TEAM_COLLECTION_METHOD.md`](TEAM_COLLECTION_METHOD.md) 的近 24 个月活跃标准筛选。当前共收录 **#{teams_data.fetch("teams").size}** 个团队：**#{status_counts.fetch("verified", 0)}** 个已核验，**#{status_counts.fetch("provisional", 0)}** 个待二次核验。"
lines << ""
lines << "状态说明：`verified` 表示归属、近期研究活动和入口均有可核验依据；`provisional` 表示团队真实存在，但论文数量、团队边界或集中代码入口仍需补证。"
lines << ""
lines << "## 汇总"
lines << ""
lines << "| 范围 | 母体数 | 团队数 |"
lines << "|---|---:|---:|"
sections.each do |title, parents|
  count = parents.sum { |parent| teams_by_parent.fetch(parent.fetch("id"), []).size }
  lines << "| #{title} | #{parents.size} | #{count} |"
end
lines << "| **合计** | **#{sections.sum { |_, parents| parents.size }}** | **#{teams_data.fetch("teams").size}** |"

sections.each do |title, parents|
  lines << ""
  lines << "## #{title}"
  parents.each do |parent|
    teams = teams_by_parent.fetch(parent.fetch("id"), [])
    lines << ""
    lines << "### #{parent.fetch("name")}（#{teams.size}）"
    lines << ""
    lines << "| 团队 | 类型 | 主要方向 | 入口 | 状态 |"
    lines << "|---|---|---|---|---|"
    teams.each do |team|
      lines << "| #{escape_cell(team.fetch("name"))} | #{escape_cell(team.fetch("team_type"))} | #{escape_cell(team.fetch("focus").join("、"))} | #{links_for(team)} | `#{team.fetch("status")}` |"
    end
    provisional_notes = teams.select { |team| team["status"] == "provisional" && team["notes"] }
    unless provisional_notes.empty?
      lines << ""
      provisional_notes.each do |team|
        lines << "- 待核验：**#{team.fetch("name")}** — #{team.fetch("notes")}"
      end
    end
  end
end

lines << ""
lines << "## 数据与核验"
lines << ""
lines << "- YAML 主数据：[`data/research-teams.yaml`](../data/research-teams.yaml)"
lines << "- 母体白名单：[`data/seed-parents.yaml`](../data/seed-parents.yaml)"
lines << "- 收录标准：[`docs/TEAM_COLLECTION_METHOD.md`](TEAM_COLLECTION_METHOD.md)"
lines << "- 链接检查：主页、GitHub 与证据链接已于 #{teams_data.fetch("last_updated")} 批量检查；少量站点会对命令行访问返回 403，但浏览器入口可用。"
lines << ""

File.write(OUTPUT_PATH, lines.join("\n"))
