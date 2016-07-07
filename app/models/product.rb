class Product < ActiveRecord::Base

  validates_presence_of :price
  validates_presence_of :name

#  mount_uploader :photo, PhotoUploader

end
