class Event < ApplicationRecord
  belongs_to :user

  validates :name, presence: true

 validates :location, presence: true

 validates :capacity, presence: true, length: { maximum: 50000 }

 validates :description, presence: true, length: { maximum: 500 }
end
