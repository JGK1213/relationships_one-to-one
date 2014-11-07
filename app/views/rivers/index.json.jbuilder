json.array!(@rivers) do |river|
  json.extract! river, :id
  json.url river_url(river, format: :json)
end
