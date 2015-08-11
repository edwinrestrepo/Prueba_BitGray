json.array!(@logs) do |log|
  json.extract! log, :id, :fecha, :descripcion
  json.url log_url(log, format: :json)
end
