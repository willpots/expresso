class AddQuantityColumnToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :quantity, :string
  end
end
