json.extract! comment, :id, :content, :user_id, :layout_id, :image, :created_at, :updated_at
json.url comment_url(comment, format: :json)