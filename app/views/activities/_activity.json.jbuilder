json.extract! activity, :id, :title, :activity_type, :start, :duration, :pace, :distance, :steps, :heart_rate, :notes, :user_id, :created_at, :updated_at
json.url activity_url(activity, format: :json)
