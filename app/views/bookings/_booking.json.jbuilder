json.extract! booking, :id, :date, :duration, :user, :table_id, :created_at, :updated_at
json.url booking_url(booking, format: :json)
