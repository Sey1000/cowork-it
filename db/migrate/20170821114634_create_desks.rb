class CreateDesks < ActiveRecord::Migration[5.0]
  def change
    create_table :desks do |t|
      t.boolean :wifi
      t.boolean :power_outlet
      t.datetime :start_time
      t.datetime :end_time
      t.references :coffeeshop, foreign_key: true

      t.timestamps
    end
  end
end
