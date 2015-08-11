json.array!(@clients) do |client|
  json.extract! client, :id, :nombres, :documento, :detalles
  json.url client_url(client, format: :json)
end
