class CreatePageTexts < ActiveRecord::Migration
  def change
    create_table :page_texts do |t|
      t.text :content
      t.references :page, index: true
      t.string :title

      t.timestamps null: false
    end
    add_foreign_key :page_texts, :pages
  end
end
