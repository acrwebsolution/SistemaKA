json.extract! reservation, :id, :codreserva, :codcliente, :codlocal, :descripcion, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)