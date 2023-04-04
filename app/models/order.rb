class Order < ApplicationRecord
  belongs_to :user
  belongs_to :food

  validates :quantity, numericality: { greater_than: 0 }

end
