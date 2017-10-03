Rails.application.config.active_record.belongs_to_required_by_default = false

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :tweets, dependent: :destroy
  has_many :replies
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end
