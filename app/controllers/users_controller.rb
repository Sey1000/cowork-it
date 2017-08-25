class UsersController < ApplicationController
  def index
    @users = User.all
    if params[:name]
      input_name = params[:name]
      @users = @users.select { |u| u.full_name.include?(params[:name].capitalize) }
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

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      render 'users/show', @user
    end
  end

  private

  # A list of the param names that can be used for filtering the Product list
  # def filtering_params(params)
  #   params.slice(:name, :occupation)
# end

  def user_params
    params.require(:user).permit(:name, :occupation, :photo)
  end
end
