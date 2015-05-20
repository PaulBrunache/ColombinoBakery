class CreateFoodPrices < ActiveRecord::Migration
  def change
    create_table :food_prices do |t|
      t.string :description
      t.decimal :price, precision: 8, scale: 2
      t.string :serves
      t.string :small
      t.string :regular
      t.string :large
      t.string :party
      t.belongs_to :category
      t.timestamps null: false
    end
    add_foreign_key :food_prices, :categories
  end
end
