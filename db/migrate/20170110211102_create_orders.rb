class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.references :cart, foreign_key: true
      t.references :cart_item, foreign_key: true
    end
  end
end
