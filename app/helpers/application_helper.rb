module ApplicationHelper

  def bootstrap_class_for_flash(type)
    case type
    when 'notice' then "alert-info"
    when 'success' then "alert-success"
    when 'error' then "alert-danger"
    when 'alert' then "alert-warning"
    else
      "alert-info"
    end
  end

  # Calculate cart price
  def calculate_total_cart_price(items)
    @cart_price = 0

    items.each do |item|
      @cart_price += item.price
    end

    @cart_price
  end

  def is_item_in_cart?(item)
    user_signed_in? && current_user.cart && current_user.cart.items.include?(item) ? true : false
  end

end
