class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :picture
      t.string :page

      t.timestamps null: false
    end
  end
end
