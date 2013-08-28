class Post < ActiveRecord::Base
  has_many :photos
  accepts_nested_attributes_for :photos, allow_destroy: true

  extend FriendlyId
  friendly_id :title, use: [:slugged, :finders]
end