json.extract! task, :id, :title, :description, :priority, :due_date, :is_completed, :TaskList_id, :created_at, :updated_at, :user_id
json.url task_url(task, format: :json)