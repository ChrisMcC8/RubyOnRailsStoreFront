# frozen_string_literal: true

# current cart model
module CurrentCart
  private

  def set_cart
    @shopping_cart = ShoppingCart.find(session[:ShoppingCart_id])
  rescue ActiveRecord::RecordNotFound
    @shopping_cart = ShoppingCart.create
    session[:ShoppingCart_id] = @shopping_cart.id
  end
end
