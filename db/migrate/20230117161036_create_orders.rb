class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.integer :quantity
      t.string :ref_code
      t.float :total_price
      t.string :status
      t.integer :user_id
      t.integer :food_id


      t.timestamps
    end
    add_index :orders, :user_id
    add_index :orders, :food_id
  end
end
