json.array!(@locals) do |local|
  json.extract! local, :id, :sede, :direccion
  json.url local_url(local, format: :json)
end
