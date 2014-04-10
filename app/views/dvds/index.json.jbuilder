json.array!(@dvds) do |dvd|
  json.extract! dvd, :id, :title, :band
  json.url dvd_url(dvd, format: :json)
end
