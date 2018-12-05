json.extract! poem, :id, :title, :author, :content, :created_at, :updated_at
json.url poem_url(poem, format: :json)
