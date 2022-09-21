json.extract! picture, :id, :title, :description, :url, :project_type, :created_at, :updated_at
json.url picture_url(picture, format: :json)
