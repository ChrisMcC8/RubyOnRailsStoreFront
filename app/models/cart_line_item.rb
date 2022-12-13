class CartLineItem < ApplicationRecord
  belongs_to :product
  belongs_to :ShoppingCart
end
