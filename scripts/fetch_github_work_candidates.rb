#!/usr/bin/env ruby

require "json"
require "open3"
require "uri"
require "yaml"

ROOT = File.expand_path("..", __dir__)
CATALOG_PATH = File.join(ROOT, "data", "research-teams.yaml")
CONFERENCE_PATTERN = /
  CVPR|ICCV|ECCV|NeurIPS|ICLR|ICML|ACL|EMNLP|NAACL|AAAI|IJCAI|KDD|SIGIR|
  CoRL|ICRA|IROS|RSS|SIGGRAPH|ACM\s*MM|INTERSPEECH|ICASSP|TPAMI|TMLR|COLM|
  WWW|WSDM|CHI|CCS
/ix

teams = YAML.load_file(CATALOG_PATH).fetch("teams")
github_teams = teams.select { |team| team.fetch("homepages").any? { |entry| entry["kind"] == "github" } }

def gh_json(path)
  stdout, stderr, status = Open3.capture3("gh", "api", path)
  raise "gh api #{path} failed: #{stderr}" unless status.success?

  JSON.parse(stdout)
end

def github_parts(url)
  parts = URI.parse(url).path.split("/").reject(&:empty?)
  [parts[0], parts[1]]
end

owners = github_teams.map do |team|
  url = team.fetch("homepages").find { |entry| entry["kind"] == "github" }.fetch("url")
  github_parts(url).first
end.uniq

owner_repositories = {}
queue = Queue.new
owners.each { |owner| queue << owner }
mutex = Mutex.new

workers = 10.times.map do
  Thread.new do
    until queue.empty?
      owner = queue.pop(true) rescue nil
      next unless owner

      begin
        repos = gh_json("users/#{owner}/repos?per_page=100&sort=updated")
        mutex.synchronize { owner_repositories[owner] = repos }
      rescue StandardError => error
        warn error.message
        mutex.synchronize { owner_repositories[owner] = [] }
      end
    end
  end
end
workers.each(&:join)

results = {}
github_teams.each do |team|
  github_url = team.fetch("homepages").find { |entry| entry["kind"] == "github" }.fetch("url")
  owner, direct_repo = github_parts(github_url)
  repos = owner_repositories.fetch(owner, []).reject { |repo| repo["fork"] || repo["archived"] || repo["private"] }
  repos = repos.select { |repo| repo["pushed_at"].to_s >= "2024-01-01" }

  scored = repos.map do |repo|
    text = [repo["name"], repo["description"], Array(repo["topics"]).join(" ")].compact.join(" ")
    score = 0
    score += 100 if direct_repo && repo["name"].casecmp?(direct_repo)
    score += 50 if text.match?(CONFERENCE_PATTERN)
    score += 20 if text.match?(/\b20(24|25|26)\b/)
    score += [repo["stargazers_count"].to_i, 5000].min / 250.0
    score += 5 if repo["description"] && repo["description"].length > 30
    [score, repo]
  end

  selected = scored.sort_by { |score, repo| [-score, repo["pushed_at"].to_s] }.first(5).map(&:last)
  results[team.fetch("id")] = selected.map do |repo|
    {
      "title" => (repo["description"].to_s.strip.empty? ? repo["name"] : repo["description"].strip),
      "url" => repo["html_url"],
      "repository" => repo["full_name"],
      "stars" => repo["stargazers_count"],
      "updated_at" => repo["pushed_at"]
    }
  end
end

puts JSON.pretty_generate(results)
