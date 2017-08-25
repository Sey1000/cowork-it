class CoffeeshopsController < ApplicationController
  def index
    if params[:address].present?
      @coffeeshops = Coffeeshop.near(params[:address], 5)
      if @coffeeshops.length == 0
        @statement = "Sorry, we couldn't find any coffeeshops in #{params[:address]}"
      elsif params[:date].present?
        @place = params[:address].downcase.capitalize!
        @coffeeshops = @coffeeshops.reject { |coffeeshop| is_full?(coffeeshop, params[:date]) }
        @statement = "#{@coffeeshops.length.to_s} Coffeeshops in #{@place}"
      else
        @place = params[:address].downcase.capitalize!
        @statement =  "#{@coffeeshops.length.to_s} Coffeeshops in #{@place}"
      end
    else
     @coffeeshops = Coffeeshop.where.not(latitude: nil, longitude: nil)
     @place = "the world"
     @statement = "#{@coffeeshops.length.to_s} Coffeeshops in #{@place}"
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
    session[:current_coffeeshop] = coffeeshop_path(@coffeeshop)
  end

  private

  def is_full?(coffeeshop, date)
    booked = []
    hours_booked = 0
    capacity = 0
    if coffeeshop.desks.length > 1
      coffeeshop.desks.each do |desk|
        if desk.bookings.length > 1
          desk.bookings.each do |booking|
            booked << booking if booking.start_time.strftime("%d/%m/%Y") == date
          end
        elsif desk.bookings.length == 1
          booked << desk.booking if desk.booking.start_time.strftime("%d/%m/%Y") == date
        end
      end
    elsif coffeeshop.desks.length == 1
      coffeeshop.desks.each do |desk|
        if desk.bookings.length > 1
          desk.bookings.each do |booking|
            booked << booking if booking.start_time.strftime("%d/%m/%Y") == date
          end
        elsif desk.bookings.length == 1
          booked << desk.bookings.first if desk.bookings.first.start_time.strftime("%d/%m/%Y") == date
        end
      end
    end
    booked.each { |booking| hours_booked += booking.end_time - booking.start_time }
    coffeeshop.desks.each { |desk| capacity += desk.capacity * (desk.end_time - desk.start_time) if desk.start_time.strftime("%d/%m/%Y") == date }
    hours_booked == capacity
  end
end

