json.array!(@documents) do |document|
  json.extract! document, :name, :slug, :doc
  json.url document_url(document, format: :json)
end
