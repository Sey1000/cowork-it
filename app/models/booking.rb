class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :desk

  def set_start_time(desk)
    self.end_time = desk.end_time
    self.cost = desk.cost
  end
end
