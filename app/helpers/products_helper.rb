# frozen_string_literal: true

# helper for products controller
module ProductsHelper
  def allow_product_add?(_product)
    return false unless current_user

    @product.user_id == current_user.id
  end
end
