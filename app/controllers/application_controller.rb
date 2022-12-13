class ApplicationController < ActionController::Base
    include CurrentCart
    before_action :current_cart
    before_action :initialize_session
    before_action :load_cart
    before_action :set_cart

    private
        def current_cart
            if session[:cart_id]
                cart = Cart.find_by(:id => session[:cart_id])
                if cart.present?
                @current_cart = cart
                else
                session[:cart_id] = nil
                end
            end

            if session[:cart_id] == nil
                @current_cart = Cart.create
                session[:cart_id] = @current_cart.id
            end
        end

        def initialize_session
            session[:cart] ||= []
        end

        def load_cart
            @cart = Product.find(session[:cart])
        end
end
