json.extract! booking, :id, :customeremail, :showingid, :seat, :pricelabel, :iscancelled, :created_at, :updated_at
json.url booking_url(booking, format: :json)
