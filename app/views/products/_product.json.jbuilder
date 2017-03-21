json.extract! product, :id, :nombre, :descripcion, :mb_subida, :mb_bajada, :costo, :ip_status_id, :created_at, :updated_at
json.url product_url(product, format: :json)
