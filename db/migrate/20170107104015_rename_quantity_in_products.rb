class RenameQuantityInProducts < ActiveRecord::Migration[5.0]
  def change
    rename_column :products, :quantity, :stock
  end
end
