json.array!(@purchases) do |purchase|
  json.extract! purchase, :id, :precio, :descripcion, :fecha, :id_cliente, :id_producto, :id_sede
  json.url purchase_url(purchase, format: :json)
end
