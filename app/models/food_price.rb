class FoodPrice < ActiveRecord::Base
  belongs_to :category
  validates :item_name, presence: true
  validates :category, presence: true
end
