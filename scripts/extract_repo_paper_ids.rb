#!/usr/bin/env ruby
# frozen_string_literal: true

require "open3"
require "thread"
require "uri"
require "yaml"

ROOT = File.expand_path("..", __dir__)
WORKS_PATH = File.join(ROOT, "data", "representative-works.yaml")
OUTPUT_PATH = File.join(ROOT, "data", "repo-paper-ids.yaml")
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

def fetch_readme(owner, repo)
  stdout, _, status = Open3.capture3(
    "gh", "api", "repos/#{owner}/#{repo}/readme",
    "-H", "Accept: application/vnd.github.raw+json"
  )
  status.success? ? stdout : nil
end

def extract_ids(readme)
  arxiv_ids = readme.scan(%r{arxiv\.org/(?:abs|pdf|html)/([0-9]{4}\.[0-9]{4,5})(?:v\d+)?}i).flatten
  arxiv_ids.concat(readme.scan(/\barXiv\s*:\s*([0-9]{4}\.[0-9]{4,5})(?:v\d+)?\b/i).flatten)
  dois = readme.scan(%r{(?:doi\.org/|doi\s*:\s*)(10\.\d{4,9}/[-._;()/:a-z0-9]+)}i).flatten

  {
    "arxiv_ids" => arxiv_ids.map { |id| id.sub(/v\d+\z/i, "") }.uniq.first(5),
    "dois" => dois.map { |doi| doi.sub(/[).,;]+\z/, "") }.uniq.first(5)
  }
end

catalog = YAML.load_file(WORKS_PATH)
jobs = Queue.new
catalog.fetch("teams").each do |team_id, works|
  works.each_with_index do |work, index|
    repo = github_repo(work.fetch("url"))
    jobs << [team_id, index, work, repo] if repo
  end
end

results = {}
mutex = Mutex.new
completed = 0
total = jobs.size

workers = Array.new(THREADS) do
  Thread.new do
    loop do
      team_id, index, work, repo = jobs.pop(true)
      owner, name = repo
      readme = fetch_readme(owner, name)
      extracted = readme ? extract_ids(readme) : { "arxiv_ids" => [], "dois" => [] }
      mutex.synchronize do
        results["#{team_id}:#{index}"] = {
          "repository" => "https://github.com/#{owner}/#{name}",
          "readme_status" => readme ? "read" : "unavailable",
          "arxiv_ids" => extracted.fetch("arxiv_ids"),
          "dois" => extracted.fetch("dois")
        }
        completed += 1
        warn "readmes #{completed}/#{total}" if (completed % 25).zero? || completed == total
      end
    rescue ThreadError
      break
    end
  end
end
workers.each(&:join)

payload = {
  "schema_version" => 1,
  "last_updated" => Time.now.strftime("%Y-%m-%d"),
  "notes" => [
    "Scholarly identifiers were extracted from each representative GitHub repository README.",
    "Multiple identifiers are retained because a repository can cover several papers; the metadata resolver validates title similarity before choosing one."
  ],
  "works" => results.sort.to_h
}

File.write(OUTPUT_PATH, payload.to_yaml(line_width: -1))
warn "wrote #{OUTPUT_PATH}: #{results.count { |_, value| value.fetch('arxiv_ids').any? || value.fetch('dois').any? }}/#{total} with scholarly ids"
