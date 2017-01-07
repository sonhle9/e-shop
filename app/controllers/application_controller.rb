class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :cart_exists?

  def cart_exists?
    if !session[:cart_id].nil?
      @cart = Cart.find(session[:cart_id])
    else
      @cart = Cart.create
    end
    session[:cart_id] = @cart.id
  end
end
