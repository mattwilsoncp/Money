json.extract! register_upload, :id, :register_id, :filename, :created_at, :updated_at
json.url register_upload_url(register_upload, format: :json)
