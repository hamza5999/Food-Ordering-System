class Discount < ApplicationRecord
  belongs_to :restaurant
  has_many :food_items
end
