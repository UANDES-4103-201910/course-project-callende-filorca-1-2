json.extract! post, :id, :gps, :title, :description, :location, :country, :status, :city, :files, :state, :wall_id, :user_id, :admin_id, :super_admin_id, :created_at, :updated_at
json.url post_url(post, format: :json)
