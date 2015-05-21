class Page < ActiveRecord::Base
    validates :picture, presence: true
    validates :page, presence: true
    validates :active, presence: true
    mount_uploader :picture, PictureUploader
    validate :picture_size
    before_save :falsify_other_records
    
    private
        def picture_size
            if picture.size > 5.megabyte
                errors.add(:picture, "should be less than 5MB")
            end
        end
        def falsify_other_records
            if self.active
              self.class.where("page == ?", self.page).where("active == ?", true).update_all(active: false)
            end
        end
end
