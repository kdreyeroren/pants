class CheckoutsController < ApplicationController
  
  def new
    product_ids = JSON.parse(cookies[:cart_items] || "[]")
    @order_items = product_ids.map { |i| OrderItem.new(product_id: i, quantity: 1) }
  end

  def show
  end

end
