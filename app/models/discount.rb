class Discount < ApplicationRecord
  enum status: {active: 0, expired: 1}

  belongs_to :restaurant
  has_many :food_items
  has_many :discount_timelines
end
