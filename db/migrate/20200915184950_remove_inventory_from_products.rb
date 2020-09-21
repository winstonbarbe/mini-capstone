class RemoveInventoryFromProducts < ActiveRecord::Migration[6.0]
  def change
    remove_column :products, :inventory, :integer
  end
end
