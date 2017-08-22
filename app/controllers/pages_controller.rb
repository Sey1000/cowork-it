class PagesController < ApplicationController
  def home
    @coffeeshop = Coffeeshop.new
  end
end
