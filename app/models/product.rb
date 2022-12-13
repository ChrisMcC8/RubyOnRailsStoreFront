class Product < ApplicationRecord
    before_destroy :not_referenced_by_any_line_item
    mount_uploader :image, ImageUploader
    serialize :image, JSON
    has_many :cart_line_items
    validates :name, :manufacturer, :price, :stock, :description, :weight, :categoryId, presence: true
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

    private
        def not_referenced_by_any_line_item
            unless cart_line_items.empty?
                errors.add(:base, "Line items present")
                throw :abort
            end
        end
end
