class FoodPrice < ActiveRecord::Base
  belongs_to :category
  validates :description, presence: true
  validates :category, presence: true
end
