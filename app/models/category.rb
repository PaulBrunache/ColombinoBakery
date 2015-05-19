class Category < ActiveRecord::Base
    has_many :prices
    belongs_to :page
end
