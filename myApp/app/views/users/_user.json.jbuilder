json.extract! user, :id, :email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :sign_in_count, :current_sign_in_at, :last_sign_in_at, :current_sign_in_ip, :last_sign_in_ip, :rol, :nombre, :apellidos, :telefono, :time_zone, :created_at, :updated_at
json.url user_url(user, format: :json)
