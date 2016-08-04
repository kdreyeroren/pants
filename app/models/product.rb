class Product < ActiveRecord::Base

  validates_presence_of :price
  validates_presence_of :name

  has_many :order_items
  has_many :orders, through: :order_items
  has_many :users, through: :orders

  mount_uploader :photo, ProductphotoUploader



end
