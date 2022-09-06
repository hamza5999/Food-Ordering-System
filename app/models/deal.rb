class Deal < ApplicationRecord
  include OrderableConcern

  has_many :deal_item_deals
  has_many :deal_items, through: :deal_item_deals

  has_many :menu_items, as: :menuable
end
