json.extract! task_list, :id, :name, :description, :created_at, :updated_at, :is_private
json.url task_list_url(task_list, format: :json)