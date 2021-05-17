class Profile < ApplicationRecord
    has_one_attached :profile_image
    has_rich_text :bio


    validate :acceptable_profile_image

    def acceptable_profile_image
        return unless profile_image.attached?
        
        unless profile_image.byte_size <= 10.megabyte
            errors.add(:profile_image, "is too big. Must be less than 10 MB")
        end
    end
  
end
