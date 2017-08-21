class Desk < ApplicationRecord
  belongs_to :coffeeshop
  has_many :bookings
end
