class AddFoodIdToOrders < ActiveRecord::Migration[7.0]
  def change
    add_column :orders, :food_id, :integer
  end
end
