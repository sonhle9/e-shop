class CartItemsController < ApplicationController
  before_action :cart_exists?, :cart_items_params, only: [:create]
  
  def create
    @cart_item = CartItem.create(cart_items_params)
    if @cart_item.save
      redirect_to cart_url
    else
      redirect_to :controller => :products, :action => :index, notice: 'Product was not added.' 
    end
  end

  private
    def cart_items_params
      params.permit(:cart_id, :product_id, :quantity)
    end
end