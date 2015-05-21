class Category < ActiveRecord::Base
    has_many :prices
    belongs_to :page
    validates :name, presence: true, length: { maximum: 50 }
    validates :page, presence: true
end
