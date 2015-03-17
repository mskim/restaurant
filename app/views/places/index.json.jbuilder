json.array!(@places) do |place|
  json.extract! place, :id, :name, :area, :address, :zip
  json.url place_url(place, format: :json)
end
