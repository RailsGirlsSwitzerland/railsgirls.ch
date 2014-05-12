# Load events
events_attributes = YAML.load_file("app/data/events.yml")
events = []
events_attributes.each do |event_attributes|
  events << Event.new(event_attributes)
end

$events = events

# Load Team members
team_attributes = YAML.load_file("app/data/team.yml")
team = []
team_attributes.each do |member|
  team << Member.new(member)
end

$team = team
