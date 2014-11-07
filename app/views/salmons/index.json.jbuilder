json.array!(@salmons) do |salmon|
  json.extract! salmon, :id
  json.url salmon_url(salmon, format: :json)
end
