json.extract! adminsession, :id, :username, :startdatetime, :enddatetime, :ip, :created_at, :updated_at
json.url adminsession_url(adminsession, format: :json)
