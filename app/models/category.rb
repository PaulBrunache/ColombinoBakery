class Category < ActiveRecord::Base
    validates :name, presence: true, length: { maximum: 50 }
    has_many :prices
    belongs_to :page
end
