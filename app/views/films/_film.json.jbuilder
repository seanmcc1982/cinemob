json.extract! film, :id, :filename, :cast, :plot, :poster, :trailer, :runtime, :addedby, :created_at, :updated_at
json.url film_url(film, format: :json)
