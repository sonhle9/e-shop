class RemoveForeignKeyFromCaartItemsOnOrders < ActiveRecord::Migration[5.0]
  def change
    remove_foreign_key :cart_items, column: :order_id
  end
end
