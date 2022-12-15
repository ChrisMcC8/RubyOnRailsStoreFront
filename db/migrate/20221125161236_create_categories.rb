# frozen_string_literal: true

# create categories table
class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.integer :categoryId
      t.string :name

      t.timestamps
    end
  end
end
