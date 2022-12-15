# frozen_string_literal: true

# add images to products table
class AddImageToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :image, :string
  end
end
