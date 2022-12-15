# frozen_string_literal: true

# add columns to cart line items
class AddQuantityToCartLineItems < ActiveRecord::Migration[7.0]
  def change
    add_column :cart_line_items, :quantity, :integer, default: 1
  end
end
