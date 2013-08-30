class Document < ActiveRecord::Base
  mount_uploader :doc, DocumentUploader
  
  extend FriendlyId
  friendly_id :name, use: [:slugged, :finders]
end
