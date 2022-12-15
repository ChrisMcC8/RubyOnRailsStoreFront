# frozen_string_literal: true

# shopping cart model
class ShoppingCart < ApplicationRecord
  has_many :cart_line_items, dependent: :destroy

  def add_product(product)
    current_item = cart_line_items.find_by(product_id: product.id)

    if current_item
      current_item.increment(:quantity)
    else
      current_item = cart_line_items.build(product_id: product.id)
    end
    current_item
  end
end
