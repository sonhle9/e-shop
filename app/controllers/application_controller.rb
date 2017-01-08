class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_cart
  
  private
    def set_cart
      if session[:cart_id].present?
        @cart = Cart.find(session[:cart_id])
      else
        @cart = Cart.create
        session[:cart_id] = @cart.id
      end
    end
    
    def current_cart
      if !session[:cart_id].nil?
        Cart.find(session[:cart_id])
      end
    end
end
