module ProductsHelper
    def allow_product_add?(product)
        return false unless current_user
        @product.user_id == current_user.id
      end
      
end
