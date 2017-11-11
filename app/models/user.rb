class User < ApplicationRecord
#<--------------------------------associations-------------------->
    devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

    has_many :events,    dependent: :destroy
    has_one  :profile
    has_many :registrations, dependent: :destroy
    has_many :registerd_events, through: :registrations, source: :event
    #<--------------------------------methods-------------------->
  def has_profile?
        profile.present? && profile.persisted?
  end

  def full_name
        profile.full_name
  end
end
