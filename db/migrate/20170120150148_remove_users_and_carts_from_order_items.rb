class RemoveUsersAndCartsFromOrderItems < ActiveRecord::Migration[5.0]
  def change
    remove_column :order_items, :user_id
    remove_column :order_items, :cart_id
  end
end
