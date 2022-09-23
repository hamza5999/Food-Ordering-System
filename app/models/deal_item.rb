class DealItem < ApplicationRecord
  has_many :deal_item_deals
  has_many :deals, through: :deal_item_deals

  belongs_to :dealable, polymorphic: true
end
