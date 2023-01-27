class Order < ApplicationRecord
  validates :quantity, numericality: { greater_than: 0 }

end
