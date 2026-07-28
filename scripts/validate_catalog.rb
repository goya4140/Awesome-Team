#!/usr/bin/env ruby

require "uri"
require "yaml"

ROOT = File.expand_path("..", __dir__)
parents_data = YAML.load_file(File.join(ROOT, "data", "seed-parents.yaml"))
catalog = YAML.load_file(File.join(ROOT, "data", "research-teams.yaml"))
works_catalog = YAML.load_file(File.join(ROOT, "data", "representative-works.yaml"))
profiles_catalog = YAML.load_file(File.join(ROOT, "data", "team-profiles.yaml"))
metadata_catalog = YAML.load_file(File.join(ROOT, "data", "work-metadata.yaml"))
recent_catalog = YAML.load_file(File.join(ROOT, "data", "recent-works.yaml"))

parents = parents_data.fetch("companies") +
          parents_data.fetch("frontier_ai_companies") +
          parents_data.fetch("universities")
parent_ids = parents.map { |parent| parent.fetch("id") }
teams = catalog.fetch("teams")
coverage = catalog.fetch("coverage")
errors = []

errors << "expected 47 parents, found #{parent_ids.size}" unless parent_ids.size == 47
errors << "duplicate parent ids" unless parent_ids.uniq.size == parent_ids.size

team_ids = teams.map { |team| team["id"] }
duplicates = team_ids.group_by(&:itself).select { |_, values| values.size > 1 }.keys
errors << "duplicate team ids: #{duplicates.join(", ")}" unless duplicates.empty?

required_fields = %w[id name parent_id team_type focus homepages evidence status]
teams.each_with_index do |team, index|
  label = team["id"] || "row-#{index + 1}"
  missing = required_fields.reject { |field| team.key?(field) && !team[field].nil? }
  errors << "#{label}: missing #{missing.join(", ")}" unless missing.empty?
  errors << "#{label}: unknown parent #{team["parent_id"]}" unless parent_ids.include?(team["parent_id"])
  errors << "#{label}: invalid status #{team["status"]}" unless %w[verified provisional excluded].include?(team["status"])
  errors << "#{label}: focus must be non-empty" unless team["focus"].is_a?(Array) && !team["focus"].empty?
  errors << "#{label}: homepages must be non-empty" unless team["homepages"].is_a?(Array) && !team["homepages"].empty?

  Array(team["homepages"]).each do |entry|
    begin
      uri = URI.parse(entry.fetch("url"))
      errors << "#{label}: unsupported URL #{uri}" unless %w[http https].include?(uri.scheme) && uri.host
    rescue KeyError, URI::InvalidURIError
      errors << "#{label}: invalid homepage entry #{entry.inspect}"
    end
  end

  evidence = team["evidence"] || {}
  %w[affiliation recent_activity].each do |kind|
    errors << "#{label}: missing #{kind} evidence" unless evidence[kind].is_a?(Array) && !evidence[kind].empty?
  end
end

coverage_ids = coverage.map { |entry| entry["parent_id"] }
errors << "coverage must contain each parent exactly once" unless coverage_ids.sort == parent_ids.sort
coverage.each do |entry|
  actual = teams.count { |team| team["parent_id"] == entry["parent_id"] }
  errors << "#{entry["parent_id"]}: coverage says #{entry["team_count"]}, actual #{actual}" unless actual == entry["team_count"]
end

missing_team_parents = parent_ids.reject { |id| teams.any? { |team| team["parent_id"] == id } }
errors << "parents with no team result: #{missing_team_parents.join(", ")}" unless missing_team_parents.empty?

works_by_team = works_catalog.fetch("teams")
errors << "representative works must cover every team exactly once" unless works_by_team.keys.sort == team_ids.sort
valid_work_kinds = %w[paper open_source paper_or_project research_index]
works_by_team.each do |team_id, works|
  errors << "#{team_id}: expected exactly 3 featured entries, found #{Array(works).size}" unless works.is_a?(Array) && works.size == 3
  Array(works).each_with_index do |work, index|
    label = "#{team_id}:work-#{index + 1}"
    %w[title url kind source].each do |field|
      errors << "#{label}: missing #{field}" unless work[field].is_a?(String) && !work[field].empty?
    end
    errors << "#{label}: invalid kind #{work["kind"]}" unless valid_work_kinds.include?(work["kind"])
    begin
      uri = URI.parse(work.fetch("url"))
      errors << "#{label}: unsupported URL #{uri}" unless %w[http https].include?(uri.scheme) && uri.host
    rescue KeyError, URI::InvalidURIError
      errors << "#{label}: invalid URL"
    end
  end
end

profiles_by_team = profiles_catalog.fetch("teams")
errors << "team profiles must cover every team exactly once" unless profiles_by_team.keys.sort == team_ids.sort
profiles_by_team.each do |team_id, profile|
  errors << "#{team_id}: missing introduction" unless profile["introduction"].is_a?(String) && profile["introduction"].length >= 30
  errors << "#{team_id}: missing Chinese directions" unless profile["directions_zh"].is_a?(Array) && !profile["directions_zh"].empty?
  errors << "#{team_id}: missing logo" unless profile.dig("logo", "url").is_a?(String)
  leaders = profile["leaders"]
  errors << "#{team_id}: leaders must be an array" unless leaders.is_a?(Array)
  if leaders.is_a?(Array) && leaders.empty?
    errors << "#{team_id}: missing leadership note" unless profile["leadership_note"].is_a?(String)
  end
  Array(leaders).each do |leader|
    %w[name role url].each { |field| errors << "#{team_id}: leader missing #{field}" unless leader[field].is_a?(String) && !leader[field].empty? }
  end
end

metadata_by_work = metadata_catalog.fetch("works")
expected_metadata_keys = works_by_team.flat_map do |team_id, works|
  works.each_index.map { |index| "#{team_id}:#{index}" }
end
errors << "work metadata must cover every featured entry exactly once" unless metadata_by_work.keys.sort == expected_metadata_keys.sort
metadata_by_work.each do |key, item|
  errors << "#{key}: missing summary" unless item["summary"].is_a?(String) && item["summary"].length >= 20
  errors << "#{key}: missing resolution status" unless %w[resolved unresolved not_a_paper].include?(item["resolution_status"])
  errors << "#{key}: missing citation object" unless item["citation"].is_a?(Hash)
  if item["resolution_status"] == "resolved"
    errors << "#{key}: resolved item missing paper" unless item["paper"].is_a?(Hash) && item.dig("paper", "title")
    errors << "#{key}: resolved item missing Abstract-derived summary" unless item["abstract"].is_a?(String) || item["summary"].include?("暂未提供 Abstract")
    errors << "#{key}: resolved item must use Google Scholar as citation destination" unless item.dig("citation", "source") == "Google Scholar"
    errors << "#{key}: resolved item missing Google Scholar URL" unless item.dig("citation", "source_url").to_s.start_with?("https://scholar.google.com/")
    errors << "#{key}: resolved item has a negative citation count" if item.dig("citation", "count").is_a?(Integer) && item.dig("citation", "count").negative?
  end
  if item["figure"]
    %w[image_url caption source_page source_kind].each do |field|
      errors << "#{key}: figure missing #{field}" unless item.dig("figure", field).is_a?(String) && !item.dig("figure", field).empty?
    end
  end
end

resolved_count = metadata_by_work.values.count { |item| item["resolution_status"] == "resolved" }
figure_count = metadata_by_work.values.count { |item| item["figure"] }
errors << "expected at least 150 strictly resolved papers, found #{resolved_count}" if resolved_count < 150
errors << "expected at least 100 original-paper figures, found #{figure_count}" if figure_count < 100

recent_by_team = recent_catalog.fetch("teams")
errors << "recent works must cover every team exactly once" unless recent_by_team.keys.sort == team_ids.sort
recent_by_team.each do |team_id, recent|
  index = recent["work_index"]
  errors << "#{team_id}: recent work index is invalid" unless index.is_a?(Integer) && index.between?(0, 2)
  errors << "#{team_id}: recent work missing selection note" unless recent["selection_note"].is_a?(String)
end

unless errors.empty?
  warn errors.map { |error| "ERROR: #{error}" }.join("\n")
  exit 1
end

status_counts = teams.group_by { |team| team.fetch("status") }.transform_values(&:size)
puts "OK: #{parent_ids.size} parents, #{teams.size} teams, #{coverage.size} coverage rows"
puts "Statuses: #{status_counts.sort.map { |status, count| "#{status}=#{count}" }.join(", ")}"
puts "Featured entries: #{works_by_team.values.flatten.size}"
puts "Profiles: #{profiles_by_team.size}; resolved papers: #{resolved_count}; original figures: #{figure_count}"
puts "Link audit: #{catalog.fetch("link_check")}"
