class Category < ActiveRecord::Base
    belongs_to :page
    has_many :food_prices
    validates :name, presence: true, length: { maximum: 50 }
    validates :page, presence: true
end
