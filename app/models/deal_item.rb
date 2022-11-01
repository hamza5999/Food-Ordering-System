# frozen_string_literal: true

# `DealItem` is a join model that connects `Deal` to `Dealable` (which is a polymorphic association)
class DealItem < ApplicationRecord
  has_many :deal_item_deals
  has_many :deals, through: :deal_item_deals

  belongs_to :dealable, polymorphic: true
end
