class AddStockToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :stock, :integer, default: 0
  end
end
