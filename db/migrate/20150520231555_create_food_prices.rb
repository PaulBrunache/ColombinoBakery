class CreateFoodPrices < ActiveRecord::Migration
  def change
    create_table :food_prices do |t|
      t.string :item_name
      t.string :price
      t.string :serves
      t.string :small
      t.string :regular
      t.string :large
      t.string :party
      t.belongs_to :category, index: true

      t.timestamps null: false
    end
  end
end
