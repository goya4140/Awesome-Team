#!/usr/bin/env ruby
# frozen_string_literal: true

require "cgi"
require "yaml"

ROOT = File.expand_path("..", __dir__)
PARENTS_PATH = File.join(ROOT, "data", "seed-parents.yaml")
TEAMS_PATH = File.join(ROOT, "data", "research-teams.yaml")
PROFILES_PATH = File.join(ROOT, "data", "team-profiles.yaml")
WORKS_PATH = File.join(ROOT, "data", "representative-works.yaml")
METADATA_PATH = File.join(ROOT, "data", "work-metadata.yaml")
RECENT_PATH = File.join(ROOT, "data", "recent-works.yaml")
OUTPUT_PATH = File.join(ROOT, "docs", "RESEARCH_TEAMS.md")

parents_data = YAML.load_file(PARENTS_PATH)
teams_data = YAML.load_file(TEAMS_PATH)
profiles = YAML.load_file(PROFILES_PATH).fetch("teams")
works = YAML.load_file(WORKS_PATH).fetch("teams")
metadata_catalog = YAML.load_file(METADATA_PATH)
metadata = metadata_catalog.fetch("works")
recent = YAML.load_file(RECENT_PATH).fetch("teams")

sections = [
  ["中国公司", parents_data.fetch("companies").select { |item| item["region"] == "CN-mainland" }],
  ["中国前沿 AI 公司与研究机构", parents_data.fetch("frontier_ai_companies").select { |item| item["region"] == "CN-mainland" }],
  ["美国公司", parents_data.fetch("companies").select { |item| item["region"] == "US" }],
  ["美国前沿 AI 公司", parents_data.fetch("frontier_ai_companies").select { |item| item["region"] == "US" }],
  ["中国 C9", parents_data.fetch("universities").select { |item| item["group"] == "C9" }],
  ["港科广", parents_data.fetch("universities").select { |item| item["group"] == "HKUST-GZ" }],
  ["香港三校", parents_data.fetch("universities").select { |item| item["group"] == "HK3" }],
  ["新加坡两校", parents_data.fetch("universities").select { |item| item["group"] == "SG2" }],
  ["美国 AI 核心高校", parents_data.fetch("universities").select { |item| item["group"] == "US-AI-Core" }]
]

teams_by_parent = teams_data.fetch("teams").group_by { |team| team.fetch("parent_id") }
status_counts = teams_data.fetch("teams").group_by { |team| team.fetch("status") }.transform_values(&:size)
all_metadata = metadata.values

def h(value)
  CGI.escapeHTML(value.to_s)
end

def links_for(team)
  labels = { "github" => "GitHub", "official" => "官网", "huggingface" => "Hugging Face" }
  team.fetch("homepages").map do |entry|
    "[#{labels.fetch(entry.fetch("kind"), entry.fetch("kind"))}](#{entry.fetch("url")})"
  end.join(" · ")
end

def leader_text(profile)
  leaders = profile.fetch("leaders")
  return "[负责人/成员页](#{profile.fetch("leadership_source")}) — #{profile.fetch("leadership_note")}" if leaders.empty?

  leaders.map do |leader|
    "[#{leader.fetch("name")}](#{leader.fetch("url")})（#{leader.fetch("role")}）"
  end.join(" · ")
end

def work_block(work, metadata, index)
  paper = metadata["paper"] || {}
  citation = metadata.fetch("citation")
  figure = metadata["figure"]
  title = paper["title"] || work.fetch("title")
  venue = [paper["venue"], paper["year"]].compact.join(" · ")
  citation_text = if citation["count"].nil? && citation["source"] == "Google Scholar"
                    "引用量：[在 Google Scholar 查看](#{citation.fetch("source_url")})（未缓存未经核验的数字）"
                  elsif citation["count"].nil?
                    "引用量：非论文条目或尚未可靠匹配"
                  else
                    "引用量：**#{citation.fetch("count")}**（[#{citation.fetch("source")}](#{citation.fetch("source_url")})，#{citation.fetch("checked_at")}）"
                  end
  impact = metadata.dig("code_impact", "github_stars")

  lines = []
  lines << "<details>"
  lines << "<summary><strong>#{index + 1}. #{h(title)}</strong>#{venue.empty? ? '' : " · #{h(venue)}"}</summary>"
  lines << ""
  lines << "- #{citation_text}"
  lines << "- GitHub Stars：**#{impact}**（与论文引用量分开统计）" if impact
  lines << "- [论文 / 项目原始入口](#{paper["url"] || work.fetch("url")})"
  lines << ""
  lines << (metadata["abstract"] ? "**基于 Abstract 的 TL;DR**" : "**摘要 / 项目说明**")
  lines << ""
  lines << h(metadata.fetch("summary"))
  if figure
    lines << ""
    lines << "**原文关键流程 / 方法图**"
    lines << ""
    lines << "<a href=\"#{h(figure.fetch("source_page"))}\"><img src=\"#{h(figure.fetch("image_url"))}\" alt=\"#{h(figure.fetch("caption"))}\" width=\"720\"></a>"
    lines << ""
    lines << "> #{h(figure.fetch("caption")).rstrip}"
    lines << "> 来源：[原论文](#{figure.fetch("source_page")})"
  end
  lines << ""
  lines << "</details>"
  lines.join("\n")
end

lines = []
lines << "# Awesome Team · AI 科研团队目录"
lines << ""
lines << "> GitHub 内可直接浏览的基础资料版。更适合筛选和阅读图表的版本见 [在线目录](https://goya4140.github.io/awesome-team/)。"
lines << ""
lines << "更新日期：**#{teams_data.fetch("last_updated")}** · 引用入口：[Google Scholar](https://scholar.google.com/)"
lines << ""
lines << "当前收录 **#{teams_data.fetch("teams").size}** 个团队（#{status_counts.fetch("verified", 0)} verified / #{status_counts.fetch("provisional", 0)} provisional），共 **#{all_metadata.size}** 项代表成果；其中 **#{all_metadata.count { |item| item["resolution_status"] == "resolved" }}** 项已匹配论文元数据，**#{all_metadata.count { |item| item.dig("figure", "image_url") }}** 项带原文图表。"
lines << ""
lines << "Google Scholar 没有官方公开结构化 API；未逐篇核验的数字不缓存，改为提供精确标题检索入口。`research_index` 是官方研究入口，不冒充单篇论文。"
lines << ""
lines << "## 快速导航"
lines << ""
sections.each { |title, _| lines << "- [#{title}](##{title.downcase.gsub(/\s+/, '-').gsub(/[^\p{Han}a-z0-9-]/i, '')})" }

sections.each do |section_title, parents|
  lines << ""
  lines << "## #{section_title}"
  parents.each do |parent|
    parent_teams = teams_by_parent.fetch(parent.fetch("id"), [])
    lines << ""
    lines << "### #{parent.fetch("name")}（#{parent_teams.size}）"
    parent_teams.each do |team|
      profile = profiles.fetch(team.fetch("id"))
      team_works = works.fetch(team.fetch("id"))
      lines << ""
      lines << "<details>"
      lines << "<summary><img src=\"#{h(profile.dig("logo", "url"))}\" width=\"32\" height=\"32\" alt=\"#{h(team.fetch("name"))} logo\"> &nbsp;<strong>#{h(team.fetch("name"))}</strong> · <code>#{team.fetch("status")}</code></summary>"
      lines << ""
      lines << "<br>"
      lines << ""
      lines << profile.fetch("introduction")
      lines << ""
      lines << "- **所属：** #{parent.fetch("name")}"
      lines << "- **主要方向：** #{profile.fetch("directions_zh").join("、")}"
      lines << "- **负责人：** #{leader_text(profile)}"
      lines << "- **官方入口：** #{links_for(team)}"
      lines << ""
      recent_entry = recent.fetch(team.fetch("id"))
      recent_index = recent_entry.fetch("work_index")
      lines << "#### 最近工作 · #{recent_entry.fetch("recent_at", "日期待核验")}"
      lines << ""
      lines << work_block(team_works.fetch(recent_index), metadata.fetch("#{team.fetch("id")}:#{recent_index}"), recent_index)
      lines << ""
      lines << "#### 代表作"
      lines << ""
      team_works.each_with_index do |work, index|
        lines << work_block(work, metadata.fetch("#{team.fetch("id")}:#{index}"), index)
        lines << ""
      end
      lines << "</details>"
    end
  end
end

lines << ""
lines << "## 数据与维护"
lines << ""
lines << "- 团队主数据：[`data/research-teams.yaml`](../data/research-teams.yaml)"
lines << "- Logo、介绍与负责人：[`data/team-profiles.yaml`](../data/team-profiles.yaml)"
lines << "- 代表成果：[`data/representative-works.yaml`](../data/representative-works.yaml)"
lines << "- 论文摘要、引用与图表：[`data/work-metadata.yaml`](../data/work-metadata.yaml)"
lines << "- 收录标准：[`docs/TEAM_COLLECTION_METHOD.md`](TEAM_COLLECTION_METHOD.md)"
lines << ""

File.write(OUTPUT_PATH, lines.join("\n"))
