#!/usr/bin/env ruby
# frozen_string_literal: true

require "json"
require "yaml"

ROOT = File.expand_path("..", __dir__)
parents_data = YAML.load_file(File.join(ROOT, "data", "seed-parents.yaml"))
teams_data = YAML.load_file(File.join(ROOT, "data", "research-teams.yaml"))
works_data = YAML.load_file(File.join(ROOT, "data", "representative-works.yaml"))
profiles_data = YAML.load_file(File.join(ROOT, "data", "team-profiles.yaml"))
metadata_data = YAML.load_file(File.join(ROOT, "data", "work-metadata.yaml"))

parents = %w[companies frontier_ai_companies universities].flat_map do |section|
  parents_data.fetch(section).map { |parent| parent.merge("collection" => section) }
end
parent_by_id = parents.to_h { |parent| [parent.fetch("id"), parent] }

teams = teams_data.fetch("teams").map do |team|
  parent = parent_by_id.fetch(team.fetch("parent_id"))
  team_id = team.fetch("id")
  works = works_data.fetch("teams").fetch(team_id).each_with_index.map do |work, index|
    work.merge("metadata" => metadata_data.fetch("works").fetch("#{team_id}:#{index}"))
  end
  team.merge(
    "parent" => parent,
    "profile" => profiles_data.fetch("teams").fetch(team_id),
    "representative_works" => works
  )
end

all_works = teams.flat_map { |team| team.fetch("representative_works") }

payload = {
  "meta" => {
    "title" => "Awesome Team",
    "last_updated" => teams_data.fetch("last_updated"),
    "activity_window" => teams_data.fetch("activity_window"),
    "counts" => {
      "parents" => parents.length,
      "teams" => teams.length,
      "verified" => teams.count { |team| team.fetch("status") == "verified" },
      "works" => all_works.length,
      "resolved_papers" => all_works.count { |work| work.dig("metadata", "resolution_status") == "resolved" },
      "works_with_figures" => all_works.count { |work| work.dig("metadata", "figure", "image_url") },
      "citations" => all_works.sum { |work| work.dig("metadata", "citation", "count").to_i }
    }
  },
  "parents" => parents,
  "teams" => teams
}

puts JSON.pretty_generate(payload)
