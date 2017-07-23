json.extract! register_entry, :id, :register_id, :entry_date, :confirmation_number, :description, :category_id, :deposit, :withdrawal, :created_at, :updated_at
json.url register_entry_url(register_entry, format: :json)
