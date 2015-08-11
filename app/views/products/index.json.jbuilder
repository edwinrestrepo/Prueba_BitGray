json.array!(@products) do |product|
  json.extract! product, :id, :producto, :precio, :descripcion
  json.url product_url(product, format: :json)
end
