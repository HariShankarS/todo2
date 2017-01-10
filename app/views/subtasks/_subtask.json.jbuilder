json.extract! subtask, :id, :text, :finished, :parent_id, :created_at, :updated_at
json.url subtask_url(subtask, format: :json)