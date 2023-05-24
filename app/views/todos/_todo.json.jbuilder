json.extract! todo, :id, :deadline, :title, :decription, :created_at, :updated_at
json.url todo_url(todo, format: :json)
