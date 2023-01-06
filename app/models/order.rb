class Order < ApplicationRecord
  belongs_to :user
  has_many :order_items
  has_many :items, through: :order_items

  enum status: [:pending, :in_progress, :delivered]

  def total_cost
    order_items.map { |food| food.item.price * food.quantity }.sum
  end
end

