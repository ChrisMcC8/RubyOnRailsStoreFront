class CreateProdCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :prod_categories do |t|
      t.string :name
      t.integer :categoryId

      t.timestamps
    end
  end
end
