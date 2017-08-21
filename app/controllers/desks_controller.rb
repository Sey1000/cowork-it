class DesksController < ApplicationController

  def show
    @desk = Desk.find(params[:id])
    @coffeeshop = @desk.coffeeshop
    @booking = Booking.new
  end
end
