json.extract! music, :id, :codmusica, :codgenero, :codautor, :titulo, :created_at, :updated_at
json.url music_url(music, format: :json)