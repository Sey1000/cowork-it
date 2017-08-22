class Coffeeshop < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :desks
  has_many :bookings, through: :desks
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
end
