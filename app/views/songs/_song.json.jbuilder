json.extract! song, :id, :title, :category, :author, :copyright, :words, :activity_id, :created_at, :updated_at
json.url song_url(song, format: :json)
