class AddCartItemsToOrderItems < ActiveRecord::Migration[5.0]
  def change
    add_reference :order_items, :cart_item, foreign_key: true
  end
end
