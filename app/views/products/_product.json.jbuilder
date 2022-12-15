# frozen_string_literal: true

json.extract! product, :id, :id, :name, :manufacturer, :price, :stock,
              :description, :weight, :categoryId, :created_at, :updated_at
json.url product_url(product, format: :json)
