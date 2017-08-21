class CoffeeshopsController < ApplicationController
  def index
    @coffeeshops = Coffeeshop.all
  end

  def show
    @coffeeshop = Coffeeshop.find(params[:id])
  end
end
