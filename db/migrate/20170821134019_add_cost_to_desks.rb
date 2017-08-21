class AddCostToDesks < ActiveRecord::Migration[5.0]
  def change
    add_column :desks, :cost, :integer
  end
end
