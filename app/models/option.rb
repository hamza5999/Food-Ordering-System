class Option < ApplicationRecord
  belongs_to :restaurant
  belongs_to :item_group

  has_many :option_order_items
  has_many :order_items, through: :option_order_items

  has_many :food_item_options
  has_many :food_items, through: :food_item_options
end
