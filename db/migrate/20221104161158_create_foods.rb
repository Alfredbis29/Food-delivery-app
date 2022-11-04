class CreateFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :foods do |t|
      t.string :name
      t.string :description
      t.string :image
      t.string :price
      t.string :category
      t.string :rating
      t.string :order_id
      t.timestamps
    end
  end
end
