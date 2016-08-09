class ChargesController < ApplicationController

  def new
  end

  def create
    
    product_ids = JSON.parse(cookies[:cart_items] || "[]")
    @order_items = product_ids.map { |i| OrderItem.new(product_id: i, quantity: 1) }
    @order = Order.new(order_items: @order_items)

    # Amount in cents
    @amount = (@order.total * 100).to_i

    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => 'Rails Stripe customer',
      :currency    => 'usd'
    )

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end


end
