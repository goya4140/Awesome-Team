#!/usr/bin/env ruby
# frozen_string_literal: true

require "json"
require "yaml"

ROOT = File.expand_path("..", __dir__)
parents_data = YAML.load_file(File.join(ROOT, "data", "seed-parents.yaml"))
teams_data = YAML.load_file(File.join(ROOT, "data", "research-teams.yaml"))
works_data = YAML.load_file(File.join(ROOT, "data", "representative-works.yaml"))

parents = %w[companies frontier_ai_companies universities].flat_map do |section|
  parents_data.fetch(section).map { |parent| parent.merge("collection" => section) }
end
parent_by_id = parents.to_h { |parent| [parent.fetch("id"), parent] }

teams = teams_data.fetch("teams").map do |team|
  parent = parent_by_id.fetch(team.fetch("parent_id"))
  team.merge(
    "parent" => parent,
    "representative_works" => works_data.fetch("teams").fetch(team.fetch("id"))
  )
end

payload = {
  "meta" => {
    "title" => "Awesome Team",
    "last_updated" => teams_data.fetch("last_updated"),
    "activity_window" => teams_data.fetch("activity_window"),
    "counts" => {
      "parents" => parents.length,
      "teams" => teams.length,
      "verified" => teams.count { |team| team.fetch("status") == "verified" },
      "works" => teams.sum { |team| team.fetch("representative_works").length }
    }
  },
  "parents" => parents,
  "teams" => teams
}

puts JSON.pretty_generate(payload)
