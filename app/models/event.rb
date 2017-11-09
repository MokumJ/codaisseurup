class Event < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :categories
  has_many :photos

#<-------------validations----------------------------------->

  validates :name, presence: true
  validates :location, presence: true
  validates :capacity, presence: true, length: { maximum: 50000 }
  validates :description, presence: true, length: { maximum: 500 }
#<--------------methods-------------------------------------->
 def self.order_by_price
    order :price
  end
end
