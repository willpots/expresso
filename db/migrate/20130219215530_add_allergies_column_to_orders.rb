class AddAllergiesColumnToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :allergies, :text
  end
end
