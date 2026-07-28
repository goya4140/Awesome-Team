#!/usr/bin/env ruby
# frozen_string_literal: true

require "cgi"
require "json"
require "open3"
require "uri"
require "yaml"

ROOT = File.expand_path("..", __dir__)
CATALOG_PATH = File.join(ROOT, "data", "research-teams.yaml")

PAPER_HINT = /
  arxiv|paper|publication|project|research|download|proceedings|
  cvpr|iccv|eccv|neurips|nips|icml|iclr|acl|emnlp|naacl|aaai|
  ijcai|siggraph|icra|iros|rss|corl|colm|kdd|www|chi|science|nature
/ix

DISCOVERY_HINT = /publication|paper|project|research|download|code|dataset|output/i

SKIP_HINT = /
  javascript:|mailto:|tel:|login|privacy|cookie|career|admission|
  faculty|people|member|student|alumni|contact|news|event|seminar|
  linkedin|twitter|x\.com|facebook|instagram|youtube
/ix

def clean_text(value)
  CGI.unescapeHTML(value.to_s)
     .gsub(/<[^>]+>/, " ")
     .gsub(/\s+/, " ")
     .strip
end

def absolute_url(base, href)
  URI.join(base, href).to_s
rescue URI::InvalidURIError
  nil
end

def fetch_page(url)
  stdout, stderr, status = Open3.capture3(
    "curl", "-L", "--compressed", "--max-time", "18",
    "-A", "Mozilla/5.0 (compatible; AwesomeTeamCatalog/1.0)",
    url
  )
  warn "#{url} failed: #{stderr.lines.last.to_s.strip}" unless status.success?
  status.success? ? stdout : nil
end

def anchors_from(html, base_url)
  html.scan(/<a\b[^>]*href\s*=\s*(["'])(.*?)\1[^>]*>(.*?)<\/a>/im).map do |_, href, label|
    title = clean_text(label)
    url = absolute_url(base_url, clean_text(href))
    next unless url&.start_with?("http")

    { "title" => title, "url" => url }
  end.compact
end

catalog = YAML.load_file(CATALOG_PATH)
teams = catalog.fetch("teams").reject do |team|
  team.fetch("homepages").any? { |homepage| homepage.fetch("kind") == "github" }
end

result = {}

teams.each do |team|
  seed_urls = (
    team.fetch("homepages").map { |homepage| homepage.fetch("url") } +
    team.dig("evidence", "recent_activity").to_a
  ).uniq.first(3)

  candidates = []
  pages = {}

  seed_urls.each do |seed_url|
    pages[seed_url] = fetch_page(seed_url)
  end

  discovered_pages = pages.flat_map do |seed_url, html|
    next [] unless html

    anchors_from(html, seed_url).map do |anchor|
      value = "#{anchor.fetch('title')} #{anchor.fetch('url')}"
      anchor.fetch("url") if value.match?(DISCOVERY_HINT)
    end.compact
  end.uniq.first(5)

  discovered_pages.each do |url|
    pages[url] ||= fetch_page(url)
  end

  pages.each do |source_page, html|
    next unless html

    anchors_from(html, source_page).each do |anchor|
      title = anchor.fetch("title")
      url = anchor.fetch("url")
      next if title.length < 10 || title.length > 240
      next if "#{title} #{url}".match?(SKIP_HINT)
      next unless "#{title} #{url}".match?(PAPER_HINT)

      candidates << {
        "title" => title,
        "url" => url,
        "source_page" => source_page
      }
    end
  end

  result[team.fetch("id")] = candidates
    .uniq { |candidate| [candidate.fetch("title").downcase, candidate.fetch("url")] }
    .first(30)
end

puts JSON.pretty_generate(result)
