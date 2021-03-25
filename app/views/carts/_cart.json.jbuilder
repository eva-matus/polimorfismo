json.extract! cart, :id, :payments, :total, :created_at, :updated_at
json.url cart_url(cart, format: :json)
