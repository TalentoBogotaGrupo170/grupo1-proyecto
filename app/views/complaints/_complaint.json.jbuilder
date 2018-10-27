json.extract! complaint, :id, :actor_id, :description, :created_at, :updated_at
json.url complaint_url(complaint, format: :json)
