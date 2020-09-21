class ChangeInventoryToProducts < ActiveRecord::Migration[6.0]
  def change
    change_column :products, :inventory, :integer, inventory: 1
  end
end
