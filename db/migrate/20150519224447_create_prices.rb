class CreatePrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.description :string
      t.price :decimal, precision: 8, scale: 2
      t.serves :string
      t.small :string
      t.regular :string
      t.large :string
      t.party :string
      t.belongs_to :category
      t.timestamps null: false
    end
    add_foreign_key :prices, :users
  end
end
