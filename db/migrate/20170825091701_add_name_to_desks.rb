class AddNameToDesks < ActiveRecord::Migration[5.0]
  def change
    add_column :desks, :name, :string
  end
end
