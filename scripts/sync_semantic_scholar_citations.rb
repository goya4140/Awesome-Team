#!/usr/bin/env ruby
# frozen_string_literal: true

require "json"
require "net/http"
require "uri"
require "yaml"

ROOT = File.expand_path("..", __dir__)
METADATA_PATH = File.join(ROOT, "data", "work-metadata.yaml")
OUTPUT_PATH = File.join(ROOT, "data", "semantic-scholar-citations.yaml")
API_URL = "https://api.semanticscholar.org/graph/v1/paper/batch"
FIELDS = %w[
  paperId
  title
  url
  externalIds
  citationCount
  influentialCitationCount
].join(",")
CHECKED_AT = ENV.fetch("CHECKED_AT", Time.now.strftime("%Y-%m-%d"))
BATCH_SIZE = Integer(ENV.fetch("S2_BATCH_SIZE", "400"))
MAX_RETRIES = Integer(ENV.fetch("S2_MAX_RETRIES", "8"))
API_KEY = ENV["SEMANTIC_SCHOLAR_API_KEY"]

STOPWORDS = %w[
  a an and are as at be by for from in into is of on or paper the this to with
].freeze

def title_tokens(value)
  value.to_s.downcase
       .gsub(/[^a-z0-9]+/, " ")
       .split
       .reject { |token| token.length < 2 || STOPWORDS.include?(token) }
       .uniq
end

def title_similarity(left, right)
  a = title_tokens(left)
  b = title_tokens(right)
  return 0.0 if a.empty? || b.empty?

  (a & b).length.to_f / (a | b).length
end

def semantic_scholar_query_id(item)
  external_ids = item.dig("paper", "external_ids") || {}
  arxiv_id = external_ids["ArXiv"].to_s.strip
  return "ARXIV:#{arxiv_id}" unless arxiv_id.empty?

  doi = external_ids["DOI"].to_s.strip
  return "DOI:#{doi}" unless doi.empty?

  nil
end

def google_scholar_url(title)
  query = URI.encode_www_form_component(%Q{"#{title}"})
  "https://scholar.google.com/scholar?hl=en&q=#{query}"
end

def semantic_scholar_attribution_url(url)
  uri = URI(url)
  query = URI.decode_www_form(uri.query.to_s)
  query << ["utm_source", "api"] unless query.any? { |key, _| key == "utm_source" }
  uri.query = URI.encode_www_form(query)
  uri.to_s
end

def retry_delay(response, attempt)
  retry_after = response["retry-after"].to_i
  return retry_after if retry_after.positive?

  [5 * (2**attempt), 60].min
end

def fetch_batch(ids)
  uri = URI(API_URL)
  uri.query = URI.encode_www_form("fields" => FIELDS)

  0.upto(MAX_RETRIES) do |attempt|
    request = Net::HTTP::Post.new(uri)
    request["Content-Type"] = "application/json"
    request["User-Agent"] = "AwesomeTeamCatalog/1.0"
    request["x-api-key"] = API_KEY unless API_KEY.to_s.empty?
    request.body = JSON.generate("ids" => ids)

    response = Net::HTTP.start(
      uri.host,
      uri.port,
      use_ssl: true,
      open_timeout: 15,
      read_timeout: 60
    ) { |http| http.request(request) }

    return JSON.parse(response.body) if response.code == "200"

    retryable = response.code == "429" || response.code.to_i >= 500
    unless retryable && attempt < MAX_RETRIES
      raise "Semantic Scholar request failed: HTTP #{response.code} #{response.body.to_s.slice(0, 300)}"
    end

    delay = retry_delay(response, attempt)
    warn "Semantic Scholar HTTP #{response.code}; retrying in #{delay}s (#{attempt + 1}/#{MAX_RETRIES})"
    sleep delay
  end
end

metadata_payload = YAML.load_file(METADATA_PATH)
metadata = metadata_payload.fetch("works")
queries = metadata.each_with_object([]) do |(key, item), rows|
  next unless item["resolution_status"] == "resolved"

  query_id = semantic_scholar_query_id(item)
  next unless query_id

  rows << {
    "key" => key,
    "query_id" => query_id,
    "title" => item.dig("paper", "title")
  }
end

raise "S2_BATCH_SIZE must be between 1 and 500" unless BATCH_SIZE.between?(1, 500)

responses = []
queries.each_slice(BATCH_SIZE).with_index do |slice, index|
  warn "Semantic Scholar batch #{index + 1}/#{(queries.length.to_f / BATCH_SIZE).ceil}: #{slice.length} papers"
  batch = fetch_batch(slice.map { |row| row.fetch("query_id") })
  raise "Semantic Scholar returned an unexpected batch size" unless batch.length == slice.length

  responses.concat(batch)
end

cache = {}
matched = 0
not_found = 0
title_mismatch = 0

queries.zip(responses).each do |query, record|
  key = query.fetch("key")
  if record.nil?
    cache[key] = {
      "status" => "not_found",
      "query_id" => query.fetch("query_id"),
      "checked_at" => CHECKED_AT
    }
    not_found += 1
    next
  end

  similarity = title_similarity(query.fetch("title"), record.fetch("title"))
  status = similarity >= 0.55 ? "matched" : "title_mismatch"
  cache[key] = {
    "status" => status,
    "query_id" => query.fetch("query_id"),
    "paper_id" => record.fetch("paperId"),
    "title" => record.fetch("title"),
    "semantic_scholar_url" => semantic_scholar_attribution_url(record.fetch("url")),
    "citation_count" => record.fetch("citationCount"),
    "influential_citation_count" => record.fetch("influentialCitationCount"),
    "external_ids" => record.fetch("externalIds", {}),
    "title_similarity" => similarity.round(4),
    "checked_at" => CHECKED_AT
  }

  if status == "matched"
    matched += 1
  else
    title_mismatch += 1
  end
end

cache.each do |key, citation|
  item = metadata.fetch(key)
  title = item.dig("paper", "title")
  scholar_url = google_scholar_url(title)

  item["citation"] = if citation["status"] == "matched"
                       {
                         "source" => "Semantic Scholar",
                         "count" => citation.fetch("citation_count"),
                         "influential_count" => citation.fetch("influential_citation_count"),
                         "source_url" => citation.fetch("semantic_scholar_url"),
                         "checked_at" => citation.fetch("checked_at"),
                         "verification_status" => "verified_external_identifier",
                         "semantic_scholar_paper_id" => citation.fetch("paper_id"),
                         "google_scholar_url" => scholar_url
                       }
                     else
                       {
                         "source" => "Google Scholar",
                         "source_url" => scholar_url,
                         "google_scholar_url" => scholar_url,
                         "verification_status" => "search_link_only",
                         "semantic_scholar_status" => citation.fetch("status"),
                         "checked_at" => citation.fetch("checked_at")
                       }
                     end
end

cache_payload = {
  "schema_version" => 1,
  "last_updated" => CHECKED_AT,
  "provider" => "Semantic Scholar Academic Graph API",
  "notes" => [
    "Citation counts are retrieved by stable arXiv or DOI identifiers, never by title-only search.",
    "Records are accepted only when the returned title has a Jaccard token similarity of at least 0.55.",
    "citation_count and influential_citation_count are Semantic Scholar metrics and may differ from Google Scholar.",
    "Set SEMANTIC_SCHOLAR_API_KEY for reliable scheduled refreshes; anonymous requests may be rate-limited."
  ],
  "works" => cache.sort.to_h
}

metadata_payload["schema_version"] = [metadata_payload.fetch("schema_version", 2), 3].max
metadata_payload["last_updated"] = CHECKED_AT
metadata_payload["citation_provider"] = "Semantic Scholar counts + Google Scholar links"
metadata_payload["notes"] = [
  "Citation counts come from the Semantic Scholar Academic Graph API and are matched by stable arXiv or DOI identifiers.",
  "Google Scholar exact-title links are retained as a second citation-discovery destination.",
  "Semantic Scholar and Google Scholar use different indexes, so their citation totals may differ.",
  "OpenAlex is used for paper identity, bibliographic fields, and abstracts.",
  "GitHub stars measure code adoption and are deliberately shown separately from scholarly citations.",
  "Figures are extracted from the original arXiv paper rendered by ar5iv."
]

File.write(OUTPUT_PATH, cache_payload.to_yaml(line_width: -1))
File.write(METADATA_PATH, metadata_payload.to_yaml(line_width: -1))
warn "wrote #{OUTPUT_PATH} and updated #{METADATA_PATH}"
warn "matched=#{matched}, not_found=#{not_found}, title_mismatch=#{title_mismatch}"
