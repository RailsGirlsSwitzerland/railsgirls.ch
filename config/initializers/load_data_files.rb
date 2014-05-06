events_attributes = YAML.load_file("app/data/events.yml")

events = []
events_attributes.each do |event_attributes|
  events << Event.new(event_attributes)
end

$events = events
