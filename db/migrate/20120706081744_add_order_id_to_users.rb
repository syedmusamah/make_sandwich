class AddOrderIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :order_id, :string
  end
end
