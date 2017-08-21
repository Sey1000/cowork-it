class DesksController < ApplicationController

  def show
    @desk = Desk.find(params[:id])
    @booking = Booking.new
  end
end
