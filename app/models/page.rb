class Page < ActiveRecord::Base
    has_many :categories
    has_many :page_texts
    validates :page_name, presence: true
    validate :picture_size
    mount_uploader :picture, PictureUploader
    before_save :falsify_other_records
    
    private
        def picture_size
            if picture.size > 5.megabyte
                errors.add(:picture, "should be less than 5MB")
            end
        end
        def falsify_other_records
            if self.active
              self.class.where(page_name: self.page_name, active: true).update_all(active: false)
            end
        end
end
