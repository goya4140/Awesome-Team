#!/usr/bin/env ruby
# frozen_string_literal: true

require "cgi"
require "yaml"

ROOT = File.expand_path("..", __dir__)
LEADERS_PATH = File.join(ROOT, "data", "team-leaders.yaml")

leaders_data = YAML.load_file(LEADERS_PATH)
teams = YAML.load_file(File.join(ROOT, "data", "research-teams.yaml")).fetch("teams")
parents_data = YAML.load_file(File.join(ROOT, "data", "seed-parents.yaml"))
parents = %w[companies frontier_ai_companies universities]
  .flat_map { |section| parents_data.fetch(section) }
  .to_h { |parent| [parent.fetch("id"), parent] }
works = YAML.load_file(File.join(ROOT, "data", "representative-works.yaml")).fetch("teams")
metadata = YAML.load_file(File.join(ROOT, "data", "work-metadata.yaml")).fetch("works")

people = leaders_data.fetch("people")
memberships = leaders_data.fetch("teams")

def canonical_name(name)
  name.unicode_normalize(:nfkd).downcase.gsub(/\p{Mn}/, "").gsub(/[^a-z0-9]/, "")
end

def person_slug(name, existing_ids)
  base = name.unicode_normalize(:nfkd)
    .downcase
    .gsub(/\p{Mn}/, "")
    .gsub(/[^a-z0-9]+/, "-")
    .gsub(/\A-|-\z/, "")
  base = "researcher" if base.empty?
  candidate = base
  suffix = 2
  while existing_ids.include?(candidate)
    candidate = "#{base}-#{suffix}"
    suffix += 1
  end
  candidate
end

existing_person_by_name = people.each_with_object({}) do |(person_id, person), index|
  index[canonical_name(person.fetch("name"))] = person_id
end

added = 0
teams.each do |team|
  team_id = team.fetch("id")
  roster = memberships[team_id] ||= []
  next if roster.size >= 3

  current_names = roster.map { |entry| people.dig(entry.fetch("person"), "name") }.compact
    .map { |name| canonical_name(name) }
  candidates = []

  # One senior/last author from each work first, then move inward. This avoids
  # taking all three suggestions from the same publication.
  author_lists = Array(works[team_id]).each_with_index.map do |work, index|
    [Array(metadata.dig("#{team_id}:#{index}", "paper", "authors")).reverse, work.fetch("url")]
  end
  max_depth = author_lists.map { |authors, _| authors.size }.max.to_i
  max_depth.times do |depth|
    author_lists.each do |authors, evidence_url|
      name = authors[depth]
      next unless name.is_a?(String) && !name.strip.empty?

      key = canonical_name(name)
      next if key.empty? || current_names.include?(key) || candidates.any? { |candidate| candidate.fetch("key") == key }

      candidates << { "name" => name.strip, "key" => key, "evidence_url" => evidence_url }
    end
  end

  candidates.first(3 - roster.size).each do |candidate|
    person_id = existing_person_by_name[candidate.fetch("key")]
    unless person_id
      person_id = person_slug(candidate.fetch("name"), people.keys)
      people[person_id] = {
        "name" => candidate.fetch("name"),
        "profile_url" => "https://scholar.google.com/citations?view_op=search_authors&mauthors=#{CGI.escape(candidate.fetch('name'))}",
        "profile_kind" => "google_scholar_search"
      }
      existing_person_by_name[candidate.fetch("key")] = person_id
    end

    academic = parents.fetch(team.fetch("parent_id")).fetch("entity_type") == "university"
    roster << {
      "person" => person_id,
      "role" => academic ? "Senior Author / Faculty Candidate" : "Senior Researcher / Representative-work Author",
      "evidence_url" => candidate.fetch("evidence_url"),
      "selection_basis" => "Selected from the senior-author positions of a featured work; the publication is the affiliation evidence and research-influence proxy."
    }
    added += 1
  end
end

leaders_data["last_updated"] = Date.today.to_s if defined?(Date)
File.write(LEADERS_PATH, leaders_data.to_yaml(line_width: -1))
warn "Added #{added} evidence-backed leader candidates."
