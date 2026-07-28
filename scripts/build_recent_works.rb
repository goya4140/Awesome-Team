#!/usr/bin/env ruby
# frozen_string_literal: true

require "json"
require "open3"
require "thread"
require "uri"
require "yaml"

ROOT = File.expand_path("..", __dir__)
WORKS_PATH = File.join(ROOT, "data", "representative-works.yaml")
METADATA_PATH = File.join(ROOT, "data", "work-metadata.yaml")
OUTPUT_PATH = File.join(ROOT, "data", "recent-works.yaml")
THREADS = Integer(ENV.fetch("THREADS", "6"))

def github_repo(url)
  uri = URI.parse(url)
  return unless uri.host == "github.com"

  parts = uri.path.split("/").reject(&:empty?)
  return if parts.length < 2

  [parts[0], parts[1].sub(/\.git\z/, "")]
rescue URI::InvalidURIError
  nil
end

def github_pushed_at(owner, repo)
  stdout, _, status = Open3.capture3(
    "gh", "api", "repos/#{owner}/#{repo}",
    "--jq", ".pushed_at"
  )
  status.success? ? stdout.strip : nil
end

works_by_team = YAML.load_file(WORKS_PATH).fetch("teams")
metadata = YAML.load_file(METADATA_PATH).fetch("works")
repo_dates = {}
jobs = Queue.new

works_by_team.each do |team_id, works|
  works.each_with_index do |work, index|
    repo = github_repo(work.fetch("url"))
    jobs << [team_id, index, repo] if repo
  end
end

mutex = Mutex.new
workers = Array.new(THREADS) do
  Thread.new do
    loop do
      team_id, index, repo = jobs.pop(true)
      owner, name = repo
      pushed_at = github_pushed_at(owner, name)
      mutex.synchronize { repo_dates["#{team_id}:#{index}"] = pushed_at if pushed_at }
    rescue ThreadError
      break
    end
  end
end
workers.each(&:join)

recent = {}
works_by_team.each do |team_id, works|
  candidates = works.each_with_index.map do |work, index|
    key = "#{team_id}:#{index}"
    resolved_paper = metadata.dig(key, "resolution_status") == "resolved"
    paper_year = metadata.dig(key, "paper", "year")
    paper_date = paper_year ? "#{paper_year}-01-01T00:00:00Z" : nil
    repo_date = repo_dates[key]
    date, source, display_date = if resolved_paper
                                   [
                                     paper_date || "0000-01-01T00:00:00Z",
                                     "paper_year",
                                     paper_year&.to_s
                                   ]
                                 elsif repo_date
                                   [repo_date, "github_pushed_at", repo_date.slice(0, 10)]
                                 else
                                   ["0000-01-01T00:00:00Z", "catalog_fallback", nil]
                                 end
    [resolved_paper ? 1 : 0, date, repo_date.to_s, index, source, work, display_date]
  end
  _, _, _, index, source, work, display_date = candidates.max_by do |candidate|
    [candidate[0], candidate[1], candidate[2], -candidate[3]]
  end
  recent[team_id] = {
    "work_index" => index,
    "title" => work.fetch("title"),
    "url" => work.fetch("url"),
    "recent_at" => display_date,
    "recency_source" => source,
    "selection_note" => "从本目录三项代表成果中优先选择最新论文；无已匹配论文时，退回 GitHub 最近推送日期。"
  }.compact
end

payload = {
  "schema_version" => 1,
  "last_updated" => Time.now.strftime("%Y-%m-%d"),
  "notes" => [
    "Recent work is selected independently for every team from its three curated representative entries.",
    "Resolved papers take precedence and are ordered by publication year; GitHub pushed_at is used only when a team has no resolved paper.",
    "This field measures recency, not importance."
  ],
  "teams" => recent.sort.to_h
}

File.write(OUTPUT_PATH, payload.to_yaml(line_width: -1))
warn "wrote #{OUTPUT_PATH}: #{recent.size} team-level recent works"
