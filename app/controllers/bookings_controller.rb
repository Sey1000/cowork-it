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
    # if current_user
    #   @booking.user = current_user
    #   @booking.save
    #   redirect_to user_path(current_user)
    # else
    #   redirect_to new_user_session_path
    # end
    @coffeeshop = @booking.desk.coffeeshop
    if current_user
      @booking.user = current_user
      if @booking.save
        redirect_to user_path(current_user)
      else
        flash[:error] =  @booking.errors.messages[:user_id][0]
        redirect_to coffeeshop_path(@coffeeshop)
      end
    else
      redirect_to new_user_session_path
    end
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
    redirect_to user_path(current_user)
  end

  private

  def bookings_params
    params.require(:booking).permit(:desk_id, :start_time, :end_time, :cost)
  end
end
