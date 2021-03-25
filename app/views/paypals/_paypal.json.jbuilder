json.extract! paypal, :id, :created_at, :updated_at
json.url paypal_url(paypal, format: :json)
