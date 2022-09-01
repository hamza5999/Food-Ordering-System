class Option < ApplicationRecord
  belongs_to :restaurant
  belongs_to :item_group

  has_one :deal_item

  has_many :option_order_items
  has_many :order_items, through: :option_order_items
end
