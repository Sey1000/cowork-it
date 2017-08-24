class UsersController < ApplicationController
  def index
    @users = User.all
    filtering_params(params).each do |key, value|
      @users = @users.public_send(key, value.capitalize) if value.present?
    end
  end

  def show
    @user = User.find(params[:id])
    @bookings = @user.bookings
  end

  private

  # A list of the param names that can be used for filtering the Product list
  def filtering_params(params)
    params.slice(:first_name, :last_name, :occupation)
  end
end
