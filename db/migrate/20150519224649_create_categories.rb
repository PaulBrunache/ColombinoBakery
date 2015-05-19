class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.name :string
      t.belongs_to :page
      t.timestamps null: false
    end
    add_foreign_key :categories, :pages
  end
end
