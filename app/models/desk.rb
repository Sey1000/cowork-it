class Desk < ApplicationRecord
  belongs_to :coffeeshop
  has_many :bookings
  has_many :users, through: :bookings

  def str_date
    self.start_time.strftime("%b %d %a")
  end

  def hour_count
    self.end_time.hour - self.start_time.hour
  end
end
