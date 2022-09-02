class FoodItem < ApplicationRecord
  belongs_to :item_group
  belongs_to :discount

  has_many :food_item_options
  has_many :options, through: :food_item_options

  has_many :order_items, as: :orderable
end
