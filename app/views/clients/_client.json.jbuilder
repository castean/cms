json.extract! client, :id, :fullname, :direccion, :tel, :cel, :email, :fecha_inicio, :fecha_termino, :pay_type_ip, :client_status_id, :created_at, :updated_at
json.url client_url(client, format: :json)
