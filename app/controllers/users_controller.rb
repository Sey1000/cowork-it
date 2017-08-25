class UsersController < ApplicationController
  def index
    @users = User.all
    if params[:name].present?
      @users = @users.select { |u| u.full_name.include?(params[:name].capitalize) }
    elsif params[:occupation].present?
      @users = User.where(occupation: params[:occupation])
    end
    # filtering_params(params).each do |key, value|
    #   @users = @users.public_send(key, value.capitalize) if value.present?
    # end
    @user = User.new
  end


  def show
    @user = User.find(params[:id])
    @bookings = @user.bookings
  end


  private

  # A list of the param names that can be used for filtering the Product list
  def filtering_params(params)
    params.slice(:occupation)
  end

  def user_params
  params.require(:user).permit(:name, :occupation, :photo)
  end
end
