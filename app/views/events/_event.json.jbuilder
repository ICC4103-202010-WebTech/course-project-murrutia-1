json.extract! event, :id,:name, :description, :location, :event_privacy, :starting_event_date
json.url event_url(event, format: :json)
