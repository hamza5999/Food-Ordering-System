class Deal < ApplicationRecord
  has_many :deal_item_deals
  has_many :deal_items, through: :deal_item_deals

  has_many :order_items, as: :orderable
end
