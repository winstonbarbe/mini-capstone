class AddsInventoryToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :inventory, :integer, inventory: 1
  end
end
