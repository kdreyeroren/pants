module CartsHelper

  def cart_count
    cookies[:cart_count].to_i #cart_count doesn't have to be the name! just a key.
  end

  def cart_items
    items = []
    JSON.parse(cookies[:cart_items] || "[]").each do |product_id|
      items << product_id
    end
    return items
  end

end
