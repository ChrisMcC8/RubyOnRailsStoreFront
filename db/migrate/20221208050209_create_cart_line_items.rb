# frozen_string_literal: true

# create cart line items table
class CreateCartLineItems < ActiveRecord::Migration[7.0]
  def change
    create_table :cart_line_items do |t|
      t.references :product, null: false, foreign_key: true
      t.belongs_to :shopping_cart, null: false, foreign_key: true

      t.timestamps
    end
  end
end
