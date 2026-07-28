#!/usr/bin/env ruby

require "uri"
require "yaml"

ROOT = File.expand_path("..", __dir__)
parents_data = YAML.load_file(File.join(ROOT, "data", "seed-parents.yaml"))
catalog = YAML.load_file(File.join(ROOT, "data", "research-teams.yaml"))
works_catalog = YAML.load_file(File.join(ROOT, "data", "representative-works.yaml"))

parents = parents_data.fetch("companies") +
          parents_data.fetch("frontier_ai_companies") +
          parents_data.fetch("universities")
parent_ids = parents.map { |parent| parent.fetch("id") }
teams = catalog.fetch("teams")
coverage = catalog.fetch("coverage")
errors = []

errors << "expected 46 parents, found #{parent_ids.size}" unless parent_ids.size == 46
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

unless errors.empty?
  warn errors.map { |error| "ERROR: #{error}" }.join("\n")
  exit 1
end

status_counts = teams.group_by { |team| team.fetch("status") }.transform_values(&:size)
puts "OK: #{parent_ids.size} parents, #{teams.size} teams, #{coverage.size} coverage rows"
puts "Statuses: #{status_counts.sort.map { |status, count| "#{status}=#{count}" }.join(", ")}"
puts "Featured entries: #{works_by_team.values.flatten.size}"
puts "Link audit: #{catalog.fetch("link_check")}"
