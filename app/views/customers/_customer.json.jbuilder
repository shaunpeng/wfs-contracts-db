json.extract! customer, :id, :customer, :created_at, :updated_at
json.url customer_url(customer, format: :json)