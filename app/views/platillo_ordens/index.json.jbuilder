json.array!(@platillo_ordens) do |platillo_orden|
  json.extract! platillo_orden, :id, :idplatillo, :idorden
  json.url platillo_orden_url(platillo_orden, format: :json)
end
