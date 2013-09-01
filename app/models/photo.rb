class Photo < ActiveRecord::Base
  mount_uploader :image, ImageUploader

  belongs_to :post
  #before_create :default_name
  #before_create :has_post?  

  def default_name
  	self.name ||= File.basename(self.image.filename, '.*').titleize if self.image_url
  end

  def has_post?
  	self.post_id ||= Post.last.id + 1
  end
end