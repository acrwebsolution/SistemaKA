json.extract! product, :id, :codproducto, :codtipoprod, :descripcion, :precio, :stock, :created_at, :updated_at
json.url product_url(product, format: :json)