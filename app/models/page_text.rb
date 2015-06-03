class PageText < ActiveRecord::Base
  belongs_to :page
  validates :page, presence: true
  validates :content, presence: true
  validates :title, presence: true
end
