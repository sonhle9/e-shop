class CartController < ApplicationController
  before_action :cart_exists?

  def index
    @cart = Cart.find(session[:cart_id]).products
  end
end