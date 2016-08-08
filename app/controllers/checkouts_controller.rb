class CheckoutsController < ApplicationController
  
  def new
    product_ids = JSON.parse(cookies[:cart_items] || "[]")
    @order_items = product_ids.map { |i| OrderItem.new(product_id: i, quantity: 1) }
    @order = Order.new(order_items: @order_items)
  end

  def show
  end

end
