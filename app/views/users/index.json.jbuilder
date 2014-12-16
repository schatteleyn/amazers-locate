json.array!(@users) do |user|
  json.extract! user, :id, :address, :latitude, :longitude, :firstname, :lastname
  json.url user_url(user, format: :json)
end
