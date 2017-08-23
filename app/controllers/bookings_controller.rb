class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
    @users = User.new
  end

  def create
    @booking = Booking.new(bookings_params)
    @booking.cost = @booking.desk.cost
    unless current_user
      redirect_to new_user_session_path
    end
    # TODO: if / else the user is logged in or not
    @booking.user = current_user
    @booking.save
    redirect_to coffeeshop_path(@booking.desk.coffeeshop)
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(bookings_params)
    redirect_to bookings_path
  end

  def destroy
    @booking = Booking.find(params[:id]).destroy
    redirect_to root_path
  end

  private

  def bookings_params
    params.require(:booking).permit(:desk_id, :start_time, :end_time)
  end
end
