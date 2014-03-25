json.array!(@weather_records) do |weather_record|
  json.extract! weather_record, :id, :zip, :temp, :description
  json.url weather_record_url(weather_record, format: :json)
end
