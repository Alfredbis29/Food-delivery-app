class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
         has_many :orders, class_name: "Order"
         has_many :foods, through: :orders

  has_many :foods
  validates :username, presence: true, uniqueness: true
end
