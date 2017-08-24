class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @bookings = @user.bookings
  end

  def user_params
  params.require(:user).permit(:name, :occupation, :photo)
  end
end
