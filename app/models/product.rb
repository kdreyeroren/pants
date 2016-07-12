class Product < ActiveRecord::Base

  validates_presence_of :price
  validates_presence_of :name
  belongs_to :admin_user

#  mount_uploader :photo, PhotoUploader

end
