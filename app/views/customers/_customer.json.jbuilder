json.extract! customer, :id, :code, :name, :contact_person_name, :contact_person_mobile, :created_at, :updated_at
json.url customer_url(customer, format: :json)
