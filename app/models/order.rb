class Order < ApplicationRecord
  has_many :foods
  belongs_to :user
end
