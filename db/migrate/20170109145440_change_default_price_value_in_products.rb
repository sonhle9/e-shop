class ChangeDefaultPriceValueInProducts < ActiveRecord::Migration[5.0]
  def change
    change_column :products, :price, :float, default: 0.0
  end
end
