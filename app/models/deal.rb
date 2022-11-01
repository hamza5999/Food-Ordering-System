# frozen_string_literal: true

# `Deal` is a model that has many `DealItem`s through `DealItemDeal`s
class Deal < ApplicationRecord
  include OrderableConcern
  include MenuableConcern

  has_many :deal_item_deals
  has_many :deal_items, through: :deal_item_deals
end
