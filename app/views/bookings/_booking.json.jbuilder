json.extract! booking, :id, :bookingdate, :user_id, :status, :created_at, :updated_at
json.url booking_url(booking, format: :json)
