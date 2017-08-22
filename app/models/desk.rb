class Desk < ApplicationRecord
  belongs_to :coffeeshop
  has_many :bookings
  has_many :users, through: :bookings

  def str_date
    self.start_time.strftime("%b %d")
  end
end
