json.extract! customer, :id, :customerid, :name, :contact, :contactmethod, :created_at, :updated_at
json.url customer_url(customer, format: :json)
