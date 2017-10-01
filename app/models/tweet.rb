Rails.application.config.active_record.belongs_to_required_by_default = false

class Tweet < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader
  acts_as_votable
  belongs_to :user
  validates :message, length: { maximum: 140 }
  default_scope -> { order(created_at: :desc) }

end
