class AddServedColumnToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :served, :boolean
  end
end
