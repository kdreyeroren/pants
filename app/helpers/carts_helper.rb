module CartsHelper

  def cart_count
    cart_items.size
  end

  def cart_items
    items = []
    JSON.parse(cookies[:cart_items] || "[]").each do |product_id|
      items << Product.find(product_id)
    end
    return items
  end

end