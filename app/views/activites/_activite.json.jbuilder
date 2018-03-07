json.extract! activite, :id, :nom, :created_at, :updated_at
json.url activite_url(activite, format: :json)
