# frozen_string_literal: true

# create orders table
class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.integer :userId
      t.string :firstName
      t.string :lastName
      t.string :email
      t.string :address
      t.string :postalCode
      t.integer :provinceCode
      t.integer :countryCode

      t.timestamps
    end
  end
end
