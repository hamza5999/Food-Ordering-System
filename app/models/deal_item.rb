class DealItem < ApplicationRecord
  belongs_to :option

  has_many :deal_item_deals
  has_many :deals, through: :deal_item_deals

  validates :option_id, uniqueness: true
end
