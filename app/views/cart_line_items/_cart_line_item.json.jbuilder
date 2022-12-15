# frozen_string_literal: true

json.extract! cart_line_item, :id, :product_id, :ShoppingCart_id, :created_at, :updated_at
json.url cart_line_item_url(cart_line_item, format: :json)
