class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :By
      t.string :Type_name
      t.string :Bread_name
      t.string :Cheese_name
      t.string :Topping_1
      t.string :Topping_2
      t.string :Topping_3

      t.timestamps
    end
  end
end
