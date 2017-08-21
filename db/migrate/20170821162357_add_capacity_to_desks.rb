class AddCapacityToDesks < ActiveRecord::Migration[5.0]
  def change
    add_column :desks, :capacity, :integer
  end
end
