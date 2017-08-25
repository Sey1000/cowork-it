class AddAboutMeToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :about_me, :text
  end
end
