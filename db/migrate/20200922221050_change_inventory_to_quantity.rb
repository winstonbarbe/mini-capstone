class ChangeInventoryToQuantity < ActiveRecord::Migration[6.0]
  def change
    rename_column :products, :inventory, :quantity
  end
end
