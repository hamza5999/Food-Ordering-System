class DealItem < ApplicationRecord
  belongs_to :option

  has_many :deal_item_deals
  has_many :deals, through: :deal_item_deals

  belongs_to :dealable, polymorphic: true

  validates :option_id, uniqueness: true
end
