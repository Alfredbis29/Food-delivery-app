class Order < ApplicationRecord
  validates :quantity, numericality: { greater_than: 0 }
  before_save :update_total_amount
  def update_total_amount
    self.total_amount = item_price * quantity
  end
end
