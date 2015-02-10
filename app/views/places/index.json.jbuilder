json.array!(@places) do |place|
  json.extract! place, :id, :name, :category, :address, :phone, :description
  json.url place_url(place, format: :json)
end
