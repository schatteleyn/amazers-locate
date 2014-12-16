class User < ActiveRecord::Base
  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  mount_uploader :avatar, AvatarUploader

  def fullname
    "#{self.firstname} #{self.lastname}"
  end
end
