class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :page_name
      t.string :picture
      t.boolean :active, default: false
      t.timestamps null: false
    end
  end
end
