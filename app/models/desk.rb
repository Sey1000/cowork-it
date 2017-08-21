class Desk < ApplicationRecord
  belongs_to :coffeeshop
  has_many :bookings
  has_many :users, through: :bookings
end
