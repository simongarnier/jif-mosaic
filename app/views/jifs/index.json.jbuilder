json.array!(@jifs) do |jif|
  json.extract! jif, :id, :name
  json.url jif_url(jif, format: :json)
end
