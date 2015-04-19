class Blog < ActiveRecord::Base
  has_many :comments
  mount_uploader :image, BlogUploader 
end
