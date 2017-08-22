class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :desk

  attr_accessor :time_int

  def set_start_time(desk)
    self.start_time = desk.start_time
    self.end_time = desk.end_time
    self.cost = desk.cost
  end
end
