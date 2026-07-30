#!/usr/bin/env ruby
# frozen_string_literal: true

require "yaml"

ROOT = File.expand_path("..", __dir__)
teams = YAML.load_file(File.join(ROOT, "data", "research-teams.yaml")).fetch("teams")
leaders = YAML.load_file(File.join(ROOT, "data", "team-leaders.yaml")).fetch("teams")

rows = teams.map do |team|
  count = Array(leaders[team.fetch("id")]).size
  [team.fetch("id"), team.fetch("parent_id"), count, team.fetch("name")]
end

distribution = rows.group_by { |row| row[2] }.transform_values(&:size).sort.to_h
puts "Teams: #{rows.size}"
puts "Leader-count distribution: #{distribution.map { |count, teams_count| "#{count}=#{teams_count}" }.join(", ")}"
puts "Complete: #{rows.count { |row| row[2] == 3 }}/#{rows.size}"

incomplete = rows.reject { |row| row[2] == 3 }
unless incomplete.empty?
  puts
  puts "Incomplete rosters:"
  incomplete.each { |team_id, parent_id, count, name| puts "#{count}/3\t#{parent_id}\t#{team_id}\t#{name}" }
  exit 1
end
