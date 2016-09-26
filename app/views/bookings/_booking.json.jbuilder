json.extract! booking, :id, :email, :start, :endd, :team, :created_at, :updated_at
json.url booking_url(booking, format: :json)