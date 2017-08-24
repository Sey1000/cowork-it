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
    unless self.desks.blank?
      desk_prices = []
      self.desks.each do |desk|
        desk_prices << desk.cost
      end
      return "#{desk_prices.reduce(:+) / desk_prices.length} €/h"
    end
    return "No desk available"
  end

  def wifi_availability
    unless self.desks.blank?
      self.desks.first.wifi
    end
  end

  def power_outlet_availability
    unless self.desks.blank?
      self.desks.first.power_outlet
    end
  end

  def capacity_overall
    unless self.desks.blank?
    end

  end

end
