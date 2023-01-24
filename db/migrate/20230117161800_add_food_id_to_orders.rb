class AddFoodIdToOrders < ActiveRecord::Migration[7.0]
  def change
    add_reference :orders, :food_id, :integer
  end
end
