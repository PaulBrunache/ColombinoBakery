class FoodPrice < ActiveRecord::Base
    belongs_to :category
    validates :name, presence: true, length: { maximum: 50 }
    validates :description, presence: true, length: { maximum: 100 }
    validates :category, presence: true
end
