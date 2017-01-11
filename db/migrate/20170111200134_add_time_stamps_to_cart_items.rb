class AddTimeStampsToCartItems < ActiveRecord::Migration[5.0]
  def change
    add_column :cart_items, :created_at, :datetime
    add_column :cart_items, :updated_at, :datetime
  end
end
