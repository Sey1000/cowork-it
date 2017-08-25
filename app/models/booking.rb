class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :desk
  validates_uniqueness_of :user_id, scope: [:start_time, :end_time]
end
