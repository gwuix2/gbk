class Photo < ActiveRecord::Base
  mount_uploader :image, ImageUploader

  validates_presence_of :image

  before_create :default_name

  def default_name
  	self.name ||= File.basename(self.image.filename, '.*').titleize if self.image	
  end
end