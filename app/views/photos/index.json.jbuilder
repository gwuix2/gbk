json.array!(@photos) do |photo|
  json.extract! photo, :name, :image, :post_id
  json.url photo_url(photo, format: :json)
end
