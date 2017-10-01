class Tweet < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader
  acts_as_votable
  belongs_to :user
  validates :message, length: { maximum: 140 }
end
