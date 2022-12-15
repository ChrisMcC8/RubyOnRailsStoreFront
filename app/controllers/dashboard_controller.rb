# frozen_string_literal: true

# Controller for the admin dashboard page
class DashboardController < ApplicationController
  def index
    @products = Product.all
    @categories = Category.all
    @prod_categories = ProdCategory.all
  end
end
