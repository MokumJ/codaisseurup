class Event < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :categories
  has_many :photos
  has_many :registrations, dependent: :destroy
  has_many :guest_user, through: :registrations, source: :user

#<-------------validations----------------------------------->

  validates :name, presence: true
  
  validates :description, presence: true, length: { maximum: 500 }
#<--------------methods-------------------------------------->
 def self.order_by_price
    order :price
  end
end
