class AddColumnsToCoffeeshops < ActiveRecord::Migration[5.0]
  def change
    add_column :coffeeshops, :name, :string
    add_column :coffeeshops, :description, :text
    add_column :coffeeshops, :address, :string
    add_column :coffeeshops, :website, :string
  end
end
