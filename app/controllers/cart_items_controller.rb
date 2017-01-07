class CartItemsController < ApplicationController
  before_action :set_cart, only: [:create]
  before_action :set_cart_item, only: [:show, :edit, :update, :destroy]
  
  def create
    product = Product.find(params[:product_id])
    @cart_item = @cart.cart_items.build(product: product)
    if @cart_item.save
      redirect_to cart_path, notice: 'Product has been added to the cart'
    else
      redirect_to @product
    end
  end

  def update
    respond_to do |format|
      if @cart_item.update(cart_item_params)
        format.html { redirect_to @cart_item, notice: 'Cart item was successfully updated.' }
        format.json { render :show, status: :ok, location: @cart_item }
      else
        format.html { render :edit }
        format.json { render json: @cart_item.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @cart_item.destroy
    redirect_to cart_path, notice: 'Product was successfully removed from the cart.'
  end

  private
    
    def set_cart_item
      @cart_item = CartItem.find(params[:id])
    end

    def cart_item_params
      params.require(:cart_item).permit(:product_id, :cart_id)
    end
end