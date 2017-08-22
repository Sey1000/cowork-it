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
    @desk = Desk.find(params[:desk_id])
      if @booking.save
        redirect_to @booking
      else
        render :new
      end
    else

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
    params.require(:booking).permit(:start_time, :end_time)
  end
end
