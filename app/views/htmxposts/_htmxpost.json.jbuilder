json.extract! htmxpost, :id, :title, :body, :created_at, :updated_at
json.url htmxpost_url(htmxpost, format: :json)
