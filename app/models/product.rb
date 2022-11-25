class Product < ApplicationRecord

    # belongs_to :category

    def self.search(search)
        if search
            product_type = Product.find_by(name: search)
            if product_type
                self.where(product_id: product_type, role: search[:":role"][","])
            else 
                @products = Product.all
            end
        else 
            @products = Product.all
        end
    end
end
