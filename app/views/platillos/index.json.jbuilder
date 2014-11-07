json.array!(@platillos) do |platillo|
  json.extract! platillo, :id, :nombre, :precio, :descripcion
  json.url platillo_url(platillo, format: :json)
end
