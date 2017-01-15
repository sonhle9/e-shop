class OrdersController < ApplicationController
  def create
    @order = Order.new(order_params)
  end

  def update
  end

  

  private

    def order_params
      params.require(:order).permit(:cart_id, :cart_item_id, :user_id)
    end
end
