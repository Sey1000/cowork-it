class RemovePhotourlFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :photo_url, :string
  end
end
