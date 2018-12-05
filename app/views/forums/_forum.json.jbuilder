json.extract! forum, :id, :tag, :title, :author, :content, :created_at, :updated_at
json.url forum_url(forum, format: :json)
