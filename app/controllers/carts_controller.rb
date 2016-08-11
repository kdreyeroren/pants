class CartsController < ApplicationController
  
  def add
    cookies[:cart_count] = cookies[:cart_count].to_i + 1
    items = JSON.parse(cookies[:cart_items] || "[]")
    items << params[:product_id].to_i
    cookies[:cart_items] = items.to_json
  end

  def remove
    cookies[:cart_count] = cookies[:cart_count].to_i - 1
    items = JSON.parse(cookies[:cart_items] || "[]")
    logger.info items.inspect
    items.delete_at(items.index(params[:product_id].to_i))
    logger.info items.inspect
    cookies[:cart_items] = items.to_json
    redirect_to checkout_path
  end

end
