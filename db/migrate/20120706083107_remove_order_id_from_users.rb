class RemoveOrderIdFromUsers < ActiveRecord::Migration
  def up
    remove_column :users, :order_id
  end

  def down
    add_column :users, :order_id, :string
  end
end
