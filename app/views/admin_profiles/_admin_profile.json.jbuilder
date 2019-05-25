json.extract! admin_profile, :id, :name, :email, :password, :type, :lastname, :location, :created_at, :updated_at
json.url admin_profile_url(admin_profile, format: :json)
