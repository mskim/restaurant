json.array!(@users) do |user|
  json.extract! user, :id, :name, :school
  json.url user_url(user, format: :json)
end
