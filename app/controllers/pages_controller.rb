class PagesController < ApplicationController
  def home
    @coffeeshops = Coffeeshop.where.not(latitude: nil, longitude: nil)[0..2]
  end
end
