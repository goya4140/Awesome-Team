#!/usr/bin/env ruby
# frozen_string_literal: true

require "json"
require "yaml"

ROOT = File.expand_path("..", __dir__)
CATALOG_PATH = File.join(ROOT, "data", "research-teams.yaml")
GITHUB_CANDIDATES = ENV.fetch("GITHUB_CANDIDATES", "/tmp/awesome_team_candidates.json")
OFFICIAL_CANDIDATES = ENV.fetch("OFFICIAL_CANDIDATES", "/tmp/awesome_team_official_candidates.json")

GENERIC_TITLE = /
  \A(?:publication|publications|research|research areas|research focus|
  research projects|our research|code \| datasets|download|view all|see more|
  skip to|school of|university of|department of|academic|find out|explore research|
  corporate|website production|research team|selected publications?)\b
/ix

MANUAL = {
  "pku-core" => [
    ["Proposing and solving olympiad geometry with guided tree search", "https://pku.ai/", "paper"],
    ["Combined evidence from artificial neural networks and human brain-lesion models reveals that language modulates vision in human perception", "https://pku.ai/", "paper"],
    ["Embedding high-resolution touch across robotic hands enables adaptive human-like grasping", "https://pku.ai/", "paper"]
  ],
  "pku-camera-intelligence" => [
    ["V2V: Scaling event-based vision through efficient video-to-voxel simulation", "https://camera.pku.edu.cn/publication", "paper"],
    ["Dense metric depth estimation via event-based differential focus volume prompting", "https://camera.pku.edu.cn/publication", "paper"],
    ["EventAid: Benchmarking event-aided image/video enhancement algorithms with real-captured hybrid dataset", "https://camera.pku.edu.cn/publication", "paper"]
  ],
  "ustc-alpha-lab" => [
    ["MemOCR: Layout-Aware Visual Memory for Efficient Long-Horizon Reasoning", "https://alphalab-ustc.github.io/publications.html", "paper"],
    ["Tiny Brains, Giant Impact: Uncovering the Keystone Neurons of LLM with Just a Few Prompts", "https://alphalab-ustc.github.io/publications.html", "paper"],
    ["When to Memorize and When to Stop: Gated Recurrent Memory for Long-Context Reasoning", "https://alphalab-ustc.github.io/publications.html", "paper"]
  ],
  "hku-intelligent-cybersecurity" => [
    ["BugAuditor: Detecting Bugs via Inconsistent Defensive Code Auditing", "https://sec.hku.hk/publications/#lin2026bugauditor", "paper"],
    ["FuzzAug: Data Augmentation by Coverage-guided Fuzzing for Neural Test Generation", "https://sec.hku.hk/publications/#he2025fuzzaug", "paper"],
    ["Evaluating Program Semantics Reasoning with Type Inference in System F", "https://sec.hku.hk/publications/#he2025tfbench", "paper"]
  ],
  "umd-gamma" => [
    ["VEGA: Learning Navigation VLAs from In-the-Wild Egocentric Video with Geometric Trajectory Supervision", "https://gamma.umd.edu/publication/848/", "paper"],
    ["Act on What You See: Unlocking Safe Social Navigation in Vision-Language-Action Models", "https://gamma.umd.edu/publication/849/", "paper"],
    ["PhysGS: Bayesian-Inferred Gaussian Splatting for Physical Property Estimation", "https://gamma.umd.edu/publication/847/", "paper"]
  ]
}.freeze

def load_json(path)
  JSON.parse(File.read(path))
rescue Errno::ENOENT
  {}
end

def normalize_github(candidate)
  {
    "title" => candidate.fetch("title"),
    "url" => candidate.fetch("url"),
    "kind" => "open_source",
    "source" => "github",
    "stars" => candidate["stars"]
  }.compact
end

def normalize_official(candidate)
  {
    "title" => candidate.fetch("title"),
    "url" => candidate.fetch("url"),
    "kind" => "paper_or_project",
    "source" => "official"
  }
end

catalog = YAML.load_file(CATALOG_PATH)
github = load_json(GITHUB_CANDIDATES)
official = load_json(OFFICIAL_CANDIDATES)

works = {}

catalog.fetch("teams").each do |team|
  entries = MANUAL.fetch(team.fetch("id"), []).map do |title, url, kind|
    { "title" => title, "url" => url, "kind" => kind, "source" => "official_curated" }
  end

  entries.concat(github.fetch(team.fetch("id"), []).map { |candidate| normalize_github(candidate) })

  official_candidates = official.fetch(team.fetch("id"), []).select do |candidate|
    title = candidate.fetch("title").strip
    title.length >= 18 && title.length <= 220 &&
      !title.match?(GENERIC_TITLE) &&
      !title.include?("{{") &&
      !candidate.fetch("url").include?("#site-")
  end
  entries.concat(official_candidates.map { |candidate| normalize_official(candidate) })

  entries = entries.uniq { |entry| [entry.fetch("title").downcase, entry.fetch("url")] }.first(3)

  fallback_urls = (
    team.fetch("homepages").map { |homepage| homepage.fetch("url") } +
    team.dig("evidence", "recent_activity").to_a +
    team.dig("evidence", "affiliation").to_a
  ).uniq

  team.fetch("focus").each_with_index do |focus, index|
    break if entries.length >= 3

    entries << {
      "title" => "Research track · #{focus.split('-').map(&:capitalize).join(' ')}",
      "url" => fallback_urls[index % fallback_urls.length],
      "kind" => "research_index",
      "source" => "official"
    }
  end

  works[team.fetch("id")] = entries.first(3)
end

payload = {
  "schema_version" => 1,
  "last_updated" => catalog.fetch("last_updated"),
  "notes" => [
    "Each team has three featured entries.",
    "paper/open_source/paper_or_project are item-level outputs; research_index is an official research entry awaiting finer curation."
  ],
  "teams" => works
}

puts payload.to_yaml(line_width: -1)
