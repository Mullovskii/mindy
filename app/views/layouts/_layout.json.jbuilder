json.extract! layout, :id, :user_id, :name, :description, :image_url, :created_at, :updated_at
json.url layout_url(layout, format: :json)