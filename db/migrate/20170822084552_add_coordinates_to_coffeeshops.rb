class AddCoordinatesToCoffeeshops < ActiveRecord::Migration[5.0]
  def change
    add_column :coffeeshops, :latitude, :float
    add_column :coffeeshops, :longitude, :float
  end
end
