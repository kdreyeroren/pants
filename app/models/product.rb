class Product < ActiveRecord::Base

  validates_presence_of :price
  validates_presence_of :name

  has_many :users, through: :orders
  has_many :orders

  mount_uploader :photo, ProductphotoUploader



end
