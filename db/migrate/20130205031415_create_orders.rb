class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :person
      t.references :product
      t.string :location
      t.string :payment

      t.timestamps
    end
    add_index :orders, :person_id
    add_index :orders, :product_id
  end
end
