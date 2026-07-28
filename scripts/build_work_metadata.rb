#!/usr/bin/env ruby
# frozen_string_literal: true

require "cgi"
require "json"
require "net/http"
require "open3"
require "thread"
require "uri"
require "yaml"

ROOT = File.expand_path("..", __dir__)
WORKS_PATH = File.join(ROOT, "data", "representative-works.yaml")
REPO_IDS_PATH = File.join(ROOT, "data", "repo-paper-ids.yaml")
CROSSREF_PATH = File.join(ROOT, "data", "crossref-metadata.yaml")
OUTPUT_PATH = File.join(ROOT, "data", "work-metadata.yaml")
CHECKED_AT = ENV.fetch("CHECKED_AT", Time.now.strftime("%Y-%m-%d"))
FIGURE_THREADS = Integer(ENV.fetch("FIGURE_THREADS", "6"))

STOPWORDS = %w[
  a an and are as at be by for from in into is of on or paper repo repository
  the this to with official implementation code project
].freeze

def tokens(value)
  value.to_s.downcase
       .gsub(/\[[^\]]+\]/, " ")
       .gsub(/[^a-z0-9]+/, " ")
       .split
       .reject { |token| token.length < 2 || STOPWORDS.include?(token) }
       .uniq
end

def title_score(left, right)
  a = tokens(left)
  b = tokens(right)
  return { "jaccard" => 0.0, "precision" => 0.0, "recall" => 0.0 } if a.empty? || b.empty?

  intersection = (a & b).length.to_f
  {
    "jaccard" => intersection / (a | b).length,
    "precision" => intersection / b.length,
    "recall" => intersection / a.length
  }
end

def acceptable_crossref?(query, title)
  score = title_score(query, title)
  title_length = tokens(title).length
  return false if title_length < 4

  score.fetch("jaccard") >= 0.78 ||
    (title_length >= 5 && score.fetch("precision") >= 0.9 && score.fetch("recall") >= 0.55)
end

def acceptable_repo_paper?(query, title)
  score = title_score(query, title)
  shared = (tokens(query) & tokens(title)).length
  shared >= 3 &&
    (score.fetch("jaccard") >= 0.35 || score.fetch("precision") >= 0.72 || score.fetch("recall") >= 0.72)
end

def openalex_batch(dois)
  records = {}
  dois.uniq.each_slice(50) do |slice|
    uri = URI("https://api.openalex.org/works")
    uri.query = URI.encode_www_form(
      "filter" => "doi:#{slice.join('|')}",
      "per-page" => 100,
      "select" => "id,doi,display_name,publication_year,primary_location,authorships,cited_by_count,abstract_inverted_index"
    )
    request = Net::HTTP::Get.new(uri)
    request["User-Agent"] = "AwesomeTeamCatalog/1.0"
    response = Net::HTTP.start(uri.host, uri.port, use_ssl: true, open_timeout: 10, read_timeout: 30) do |http|
      http.request(request)
    end
    raise "OpenAlex request failed: HTTP #{response.code}" unless response.code == "200"

    JSON.parse(response.body).fetch("results").each do |record|
      doi = record["doi"].to_s.sub(%r{\Ahttps://doi\.org/}i, "").downcase
      records[doi] = record
    end
    sleep 0.2
  end
  records
end

def abstract_text(inverted_index)
  return nil unless inverted_index.is_a?(Hash) && inverted_index.any?

  indexed = inverted_index.flat_map do |word, positions|
    Array(positions).map { |position| [position, word] }
  end
  indexed.sort_by(&:first).map(&:last).join(" ")
end

def first_sentences(text, limit = 680)
  return nil if text.to_s.strip.empty?

  clean = text.gsub(/\s+/, " ").strip
  sentences = clean.scan(/.+?(?:[.!?](?=\s|\z)|\z)/)
  summary = sentences.first(2).join(" ").strip
  summary = clean if summary.empty?
  summary.length > limit ? "#{summary.slice(0, limit).sub(/\s+\S*\z/, '')}…" : summary
end

def record_to_paper(record, arxiv_id: nil)
  location = record["primary_location"] || {}
  doi = record["doi"].to_s.sub(%r{\Ahttps://doi\.org/}i, "")
  {
    "title" => record.fetch("display_name"),
    "url" => arxiv_id ? "https://arxiv.org/abs/#{arxiv_id}" : (record["doi"] || location["landing_page_url"] || record["id"]),
    "openalex_url" => record.fetch("id"),
    "year" => record["publication_year"],
    "venue" => location.dig("source", "display_name") || location["raw_source_name"],
    "authors" => Array(record["authorships"]).first(10).map { |entry| entry.dig("author", "display_name") }.compact,
    "external_ids" => {
      "ArXiv" => arxiv_id,
      "DOI" => doi.empty? ? nil : doi,
      "OpenAlex" => record.fetch("id")
    }.compact
  }.compact
end

def figure_from_arxiv(arxiv_id)
  html_url = "https://ar5iv.labs.arxiv.org/html/#{arxiv_id}"
  stdout, _, status = Open3.capture3(
    "curl", "-L", "-sS", "--max-time", "15",
    "-A", "AwesomeTeamCatalog/1.0",
    html_url
  )
  return nil unless status.success?

  stdout.scan(/<figure[^>]*>(.*?)<\/figure>/im).each do |match|
    block = match.first
    src = block[/<img[^>]+src=["']([^"']+)["']/i, 1]
    caption_html = block[/<figcaption[^>]*>(.*?)<\/figcaption>/im, 1]
    next unless src && caption_html

    caption = CGI.unescapeHTML(caption_html.gsub(/<[^>]+>/, " ").gsub(/\s+/, " ").strip)
    next if caption.length < 40

    return {
      "image_url" => URI.join(html_url, src).to_s,
      "caption" => caption.slice(0, 700),
      "source_page" => "https://arxiv.org/abs/#{arxiv_id}",
      "source_kind" => "原论文图表（通过 ar5iv 渲染）"
    }
  end
  nil
rescue URI::InvalidURIError
  nil
end

catalog = YAML.load_file(WORKS_PATH)
repo_ids = YAML.load_file(REPO_IDS_PATH).fetch("works")
crossref = YAML.load_file(CROSSREF_PATH).fetch("works")

all_arxiv_ids = repo_ids.values.flat_map { |entry| entry.fetch("arxiv_ids") }.uniq
strict_crossref_dois = crossref.values.map do |entry|
  next unless entry["status"] == "resolved"
  next unless acceptable_crossref?(entry.fetch("query"), entry.fetch("title"))

  entry["doi"]&.downcase
end.compact.uniq
all_dois = all_arxiv_ids.map { |id| "10.48550/arxiv.#{id}".downcase } + strict_crossref_dois
warn "OpenAlex batches: #{all_dois.uniq.length} identifiers"
openalex = openalex_batch(all_dois)

metadata = {}
figure_jobs = Queue.new
resolved = 0

catalog.fetch("teams").each do |team_id, works|
  works.each_with_index do |work, index|
    key = "#{team_id}:#{index}"
    base = {
      "team_id" => team_id,
      "work_index" => index,
      "catalog_title" => work.fetch("title"),
      "catalog_url" => work.fetch("url"),
      "kind" => work.fetch("kind")
    }

    if work.fetch("kind") == "research_index"
      metadata[key] = base.merge(
        "summary" => "这是团队的官方研究入口，可继续访问其研究方向、项目或论文列表；该条目不是单篇论文，因此不展示论文引用量。",
        "citation" => { "count" => nil, "source" => nil, "checked_at" => CHECKED_AT },
        "figure" => nil,
        "resolution_status" => "not_a_paper"
      )
      next
    end

    repo_entry = repo_ids[key]
    candidates = Array(repo_entry&.fetch("arxiv_ids", nil)).map do |arxiv_id|
      record = openalex["10.48550/arxiv.#{arxiv_id}".downcase]
      record ? [arxiv_id, record, title_score(work.fetch("title"), record.fetch("display_name")).fetch("jaccard")] : nil
    end.compact
    arxiv_id, record, = candidates
      .select { |_, candidate, _| acceptable_repo_paper?(work.fetch("title"), candidate.fetch("display_name")) }
      .max_by { |_, _, score| score }

    crossref_entry = crossref[key]
    if record.nil? && crossref_entry && crossref_entry["status"] == "resolved" &&
       acceptable_crossref?(crossref_entry.fetch("query"), crossref_entry.fetch("title"))
      record = openalex[crossref_entry.fetch("doi").downcase]
    end

    if record
      paper = record_to_paper(record, arxiv_id: arxiv_id)
      abstract = first_sentences(abstract_text(record["abstract_inverted_index"]))
      summary = if abstract
                  "该工作《#{paper.fetch('title')}》聚焦于其标题所述的研究问题。原始摘要要点：#{abstract}"
                else
                  "该工作《#{paper.fetch('title')}》已通过学术标识与 OpenAlex 记录完成匹配；摘要暂未由数据源提供，可从论文原文继续阅读。"
                end
      metadata[key] = base.merge(
        "paper" => paper,
        "summary" => summary,
        "citation" => {
          "count" => record.fetch("cited_by_count"),
          "source" => "OpenAlex",
          "source_url" => record.fetch("id"),
          "checked_at" => CHECKED_AT
        },
        "code_impact" => work["stars"] ? { "github_stars" => work["stars"], "checked_at" => CHECKED_AT } : nil,
        "figure" => nil,
        "resolution_status" => "resolved"
      ).compact
      figure_jobs << [key, arxiv_id] if arxiv_id
      resolved += 1
    else
      description = work.fetch("title").gsub(/\s+/, " ").strip
      metadata[key] = base.merge(
        "summary" => "这是团队公开的#{work.fetch('kind') == 'open_source' ? '开源研究成果' : '代表性研究成果'}。目录中的公开说明为：#{description} 可通过原始链接查看完整项目、论文或数据说明。",
        "citation" => { "count" => nil, "source" => nil, "checked_at" => CHECKED_AT },
        "code_impact" => work["stars"] ? { "github_stars" => work["stars"], "checked_at" => CHECKED_AT } : nil,
        "figure" => nil,
        "resolution_status" => "unresolved"
      ).compact
    end
  end
end

figure_mutex = Mutex.new
figure_completed = 0
figure_total = figure_jobs.size
workers = Array.new(FIGURE_THREADS) do
  Thread.new do
    loop do
      key, arxiv_id = figure_jobs.pop(true)
      figure = figure_from_arxiv(arxiv_id)
      figure_mutex.synchronize do
        metadata.fetch(key)["figure"] = figure
        figure_completed += 1
        warn "figures #{figure_completed}/#{figure_total}" if (figure_completed % 20).zero? || figure_completed == figure_total
      end
    rescue ThreadError
      break
    end
  end
end
workers.each(&:join)

payload = {
  "schema_version" => 2,
  "last_updated" => CHECKED_AT,
  "citation_provider" => "OpenAlex",
  "notes" => [
    "Citation counts are a dated snapshot from OpenAlex and may differ from Google Scholar, Semantic Scholar, or Crossref.",
    "GitHub stars measure code adoption and are deliberately shown separately from scholarly citations.",
    "Paper identity is resolved first from arXiv/DOI identifiers in the representative repository README, then from strict Crossref title matches.",
    "Figures are extracted from the original arXiv paper rendered by ar5iv, with the original paper page retained as the source."
  ],
  "works" => metadata.sort.to_h
}

File.write(OUTPUT_PATH, payload.to_yaml(line_width: -1))
warn "wrote #{OUTPUT_PATH}: resolved=#{resolved}, figures=#{metadata.count { |_, entry| entry['figure'] }}"
