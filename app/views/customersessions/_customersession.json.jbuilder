json.extract! customersession, :id, :customeremail, :startdatetime, :enddatetime, :ip, :created_at, :updated_at
json.url customersession_url(customersession, format: :json)
