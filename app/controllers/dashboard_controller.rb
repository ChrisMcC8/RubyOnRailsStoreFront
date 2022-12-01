class DashboardController < ApplicationController
  def index
    @products = Product.all
    @categories = Category.all
    @prod_categories = ProdCategory.all
  end
end
