# frozen_string_literal: true

# create products table
class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :manufacturer
      t.decimal :price
      t.integer :stock
      t.text :description
      t.decimal :weight
      t.integer :categoryId

      t.timestamps
    end
  end
end
