class Coffeeshop < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :desks
  has_many :bookings, through: :desks
  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  def average_price_per_hour
    desk_prices = []
    self.desks.each do |desk|
      desk_prices << desk.cost
    end
    return desk_prices.reduce(:+) / desk_prices.length
  end
  
end
