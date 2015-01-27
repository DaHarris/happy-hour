json.array!(@locations) do |location|
  json.extract! location, :id, :name, :address, :longitude, :latitude, :gmaps, :hstart, :hend, :hmenu, :hrating, :number
  json.url location_url(location, format: :json)
end
