class AddRememberDisgestToUsers < ActiveRecord::Migration
  def change
    add_column :users, :remember_disgest, :string
  end
end
