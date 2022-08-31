class Option < ApplicationRecord
  belongs_to :restaurant
  belongs_to :item_group
  has_one :deal_item
  has_and_belongs_to_many :order_items
end
