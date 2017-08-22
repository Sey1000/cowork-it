class CoffeeshopsController < ApplicationController
  def index
    @coffeeshops = Coffeeshop.where.not(latitude: nil, longitude: nil)

    @hash = Gmaps4rails.build_markers(@coffeeshops) do |coffeeshop, marker|
      marker.lat coffeeshop.latitude
      marker.lng coffeeshop.longitude
      # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
    end
  end

  def show
    @coffeeshop = Coffeeshop.find(params[:id])
  end
end
