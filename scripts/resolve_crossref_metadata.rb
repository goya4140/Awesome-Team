#!/usr/bin/env ruby
# frozen_string_literal: true

require "cgi"
require "json"
require "net/http"
require "uri"
require "yaml"

ROOT = File.expand_path("..", __dir__)
WORKS_PATH = File.join(ROOT, "data", "representative-works.yaml")
OUTPUT_PATH = ENV.fetch("OUTPUT_PATH", File.join(ROOT, "data", "crossref-metadata.yaml"))
CHECKED_AT = ENV.fetch("CHECKED_AT", Time.now.strftime("%Y-%m-%d"))
USER_AGENT = "AwesomeTeamCatalog/1.0 (https://github.com/goya4140/awesome-team)"
STOPWORDS = %w[a an and are as at be by for from in into is of on or the this to with official paper repo repository implementation code project].freeze

def normalized_tokens(value)
  value.to_s.downcase
       .gsub(/\[[^\]]+\]/, " ")
       .gsub(/[^a-z0-9]+/, " ")
       .split
       .reject { |token| token.length < 2 || STOPWORDS.include?(token) }
       .uniq
end

def clean_query(title)
  quoted = title.scan(/["“](.{16,220}?)[”"]/).flatten.max_by(&:length)
  return quoted if quoted

  title.gsub(/\[[^\]]+\]/, " ")
       .sub(/\A(?:the\s+)?official\s+(?:implementation|repository|repo)\s+(?:of|for)\s+(?:the\s+)?(?:paper\s+)?/i, "")
       .sub(/\Arepo\s+for\s+(?:the\s+)?(?:paper\s+)?/i, "")
       .sub(/\Acode\s+for\s+(?:the\s+)?(?:paper\s+)?/i, "")
       .gsub(/\s+/, " ").strip.slice(0, 240)
end

def similarity(left, right)
  a = normalized_tokens(left)
  b = normalized_tokens(right)
  return 0.0 if a.empty? || b.empty?

  intersection = (a & b).length.to_f
  [intersection / (a | b).length, intersection / [a.length, b.length].min].max
end

def clean_abstract(value)
  return nil if value.to_s.empty?

  CGI.unescapeHTML(value.gsub(/<[^>]+>/, " ").gsub(/\s+/, " ").strip)
end

def year_from(item)
  Array(item.dig("published", "date-parts")).dig(0, 0)
end

catalog = YAML.load_file(WORKS_PATH)
jobs = catalog.fetch("teams").flat_map do |team_id, works|
  works.each_with_index.map { |work, index| [team_id, index, work] }
end

uri = URI("https://api.crossref.org")
results = {}
resolved = 0

Net::HTTP.start(uri.host, uri.port, use_ssl: true, read_timeout: 20, open_timeout: 10) do |http|
  jobs.each_with_index do |(team_id, index, work), job_index|
    key = "#{team_id}:#{index}"
    if work.fetch("kind") == "research_index"
      results[key] = { "status" => "not_a_paper", "checked_at" => CHECKED_AT }
      next
    end

    query = clean_query(work.fetch("title"))
    path = "/works?#{URI.encode_www_form("query.title" => query, "rows" => 3, "select" => "title,DOI,is-referenced-by-count,URL,abstract,published,container-title,author")}"
    request = Net::HTTP::Get.new(path, "User-Agent" => USER_AGENT, "Accept" => "application/json")
    response = http.request(request)

    if response.code == "429"
      sleep 2
      response = http.request(request)
    end

    items = response.code == "200" ? JSON.parse(response.body).dig("message", "items").to_a : []
    scored = items.map do |item|
      title = Array(item["title"]).first.to_s
      [similarity(query, title), item]
    end
    score, match = scored.max_by(&:first)

    if match && score >= 0.62
      resolved += 1
      results[key] = {
        "status" => "resolved",
        "query" => query,
        "match_confidence" => score.round(3),
        "title" => Array(match["title"]).first,
        "doi" => match["DOI"],
        "url" => match["URL"],
        "year" => year_from(match),
        "venue" => Array(match["container-title"]).first,
        "citation_count" => match["is-referenced-by-count"],
        "abstract" => clean_abstract(match["abstract"]),
        "authors" => Array(match["author"]).first(10).map { |author| [author["given"], author["family"]].compact.join(" ") },
        "checked_at" => CHECKED_AT
      }.compact
    else
      results[key] = {
        "status" => "unresolved",
        "query" => query,
        "checked_at" => CHECKED_AT
      }
    end

    warn "crossref #{job_index + 1}/#{jobs.length} resolved=#{resolved}" if ((job_index + 1) % 25).zero? || job_index + 1 == jobs.length
    sleep 0.22
  rescue JSON::ParserError, IOError, SystemCallError => error
    results[key] = { "status" => "error", "query" => query, "message" => error.message, "checked_at" => CHECKED_AT }
    sleep 0.5
  end
end

payload = {
  "schema_version" => 1,
  "last_updated" => CHECKED_AT,
  "provider" => {
    "name" => "Crossref REST API",
    "url" => "https://www.crossref.org/documentation/retrieve-metadata/rest-api/"
  },
  "works" => results.sort.to_h
}

File.write(OUTPUT_PATH, payload.to_yaml(line_width: -1))
puts "wrote #{OUTPUT_PATH}: #{resolved}/#{jobs.length} resolved"
