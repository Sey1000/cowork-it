class AddTwoColumnsToCoffeeshops < ActiveRecord::Migration[5.0]
  def change
    add_column :coffeeshops, :short_description, :text
    add_column :coffeeshops, :picture_url, :string
  end
end
