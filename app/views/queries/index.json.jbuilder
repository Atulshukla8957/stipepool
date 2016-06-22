json.array!(@queries) do |query|
  json.extract! query, :id, :title, :description
  json.url query_url(query, format: :json)
end
