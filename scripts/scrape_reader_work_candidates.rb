#!/usr/bin/env ruby
# frozen_string_literal: true

require "cgi"
require "json"
require "open3"
require "thread"
require "yaml"

ROOT = File.expand_path("..", __dir__)
teams = YAML.load_file(File.join(ROOT, "data", "research-teams.yaml")).fetch("teams")
works = YAML.load_file(File.join(ROOT, "data", "representative-works.yaml")).fetch("teams")

target_ids = works.select do |_, entries|
  entries.any? { |entry| entry.fetch("kind") == "research_index" }
end.keys

SKIP = /
  publication|research|project|news|people|team|member|student|faculty|home|
  contact|about|join|opening|award|talk|seminar|workshop|course|teaching|
  school|university|institute|laboratory|copyright|navigation|menu|welcome|
  admission|event|research area|research focus|selected paper|latest paper
/ix

def reader_url(url)
  "https://r.jina.ai/http://#{url.sub(%r{\Ahttps?://}, '')}"
end

def fetch(url)
  stdout, _, status = Open3.capture3(
    "curl", "-L", "--max-time", "18", "-sS",
    "-H", "Accept: text/markdown",
    reader_url(url)
  )
  status.success? ? stdout : ""
end

result = {}
queue = Queue.new
teams.select { |team| target_ids.include?(team.fetch("id")) }.each { |team| queue << team }
mutex = Mutex.new

workers = Array.new(8) do
  Thread.new do
    loop do
      team = queue.pop(true)
  urls = (
    team.fetch("homepages").map { |page| page.fetch("url") } +
    team.dig("evidence", "recent_activity").to_a
  ).uniq.first(3)

  candidates = urls.flat_map do |url|
    markdown = fetch(url)
    headings = markdown.scan(/^\#{1,6}\s+(.+)$/).flatten
    links = markdown.scan(/\[([^\]]{18,220})\]\((https?:\/\/[^)\s]+)\)/)

    heading_candidates = headings.map do |title|
      { "title" => title.gsub(/\[|\]|\*|_/, "").strip, "url" => url }
    end
    link_candidates = links.map do |title, link|
      { "title" => CGI.unescapeHTML(title.gsub(/\*|_/, "").strip), "url" => link }
    end
    heading_candidates + link_candidates
  end

      selected = candidates.select do |candidate|
        title = candidate.fetch("title")
        title.length.between?(20, 220) &&
          !title.match?(SKIP) &&
          title.match?(/[a-z]{3,}/i) &&
          !title.include?("{{")
      end.uniq { |candidate| candidate.fetch("title").downcase }.first(20)
      mutex.synchronize { result[team.fetch("id")] = selected }
    rescue ThreadError
      break
    end
  end
end

workers.each(&:join)
puts JSON.pretty_generate(result)
