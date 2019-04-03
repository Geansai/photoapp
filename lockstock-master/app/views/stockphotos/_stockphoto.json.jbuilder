json.extract! stockphoto, :id, :title, :description, :price, :image_url, :category, :photographer, :tags, :created_at, :updated_at
json.url stockphoto_url(stockphoto, format: :json)
