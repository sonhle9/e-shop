class RenameOrdersToCartItems < ActiveRecord::Migration[5.0]
  def change
    rename_table :orders, :cart_items
  end
end
