class Page < ActiveRecord::Base
    validates :name, presence: true, length: { maximum: 50 }
    has_many :categories
end
