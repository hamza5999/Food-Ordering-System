class Discount < ApplicationRecord
  belongs_to :restaurant
  has_many :food_items
  has_many :discount_timelines
end
