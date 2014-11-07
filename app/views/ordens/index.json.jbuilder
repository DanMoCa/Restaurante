json.array!(@ordens) do |orden|
  json.extract! orden, :id, :total
  json.url orden_url(orden, format: :json)
end
