class CoffeeshopsController < ApplicationController
  def index
    @coffeeshops = Coffeeshop.where.not(latitude: nil, longitude: nil)
    if params[:address]
    @coffeeshops = Coffeeshop.near(params[:address], 5) #if nil?
    end

  @hash = Gmaps4rails.build_markers(@coffeeshops) do |coffeeshop, marker|
    marker.lat coffeeshop.latitude
    marker.lng coffeeshop.longitude
    marker.infowindow render_to_string(partial: "/coffeeshops/map_box", locals: { coffeeshop: coffeeshop })
  end
  @user = current_user
end

  def show
  @coffeeshop = Coffeeshop.find(params[:id])
  @bookings = @coffeeshop.bookings
    # for simple form
  @booking = Booking.new
  end

end

