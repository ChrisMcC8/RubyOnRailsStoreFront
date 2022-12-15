# frozen_string_literal: true

# create user profiles table
class CreateUserProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :user_profiles do |t|
      t.string :firstName
      t.string :lastName
      t.string :address
      t.string :postalCode
      t.integer :provinceCode
      t.integer :countryCode

      t.timestamps
    end
  end
end
