# frozen_string_literal: true

# create shopping carts table
class CreateShoppingCarts < ActiveRecord::Migration[7.0]
  def change
    create_table :shopping_carts, &:timestamps
  end
end
