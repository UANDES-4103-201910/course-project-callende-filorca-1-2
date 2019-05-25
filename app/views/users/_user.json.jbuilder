json.extract! user, :id, :picture, :location, :name, :biography, :password, :email, :city, :country, :lastname, :blacklist_id, :admin_id, :super_admin_id, :created_at, :updated_at
json.url user_url(user, format: :json)
