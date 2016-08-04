class Order < ActiveRecord::Base
  belongs_to :user
  has_many :order_items
  has_many :products, through: :order_items



# does current user currently have a live order - cart_order method in user.rb
# think about order states - none, in progress (in cart but not purchased), purchased

# do I have an open order? no? ok, create one

end