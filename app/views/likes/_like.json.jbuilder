json.extract! like, :id, :user_id, :post_id, :type, :created_at, :updated_at
json.url like_url(like, format: :json)
