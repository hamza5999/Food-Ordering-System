class Discount < ApplicationRecord
  enum kind: {fixed: 0, percentage: 1}

  belongs_to :restaurant
  has_many :food_items
  has_many :discount_timelines
end
