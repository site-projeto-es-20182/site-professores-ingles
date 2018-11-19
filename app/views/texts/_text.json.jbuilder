json.extract! text, :id, :title, :author, :content, :created_at, :updated_at
json.url text_url(text, format: :json)
