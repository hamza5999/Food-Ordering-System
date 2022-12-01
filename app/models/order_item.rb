# frozen_string_literal: true

# An OrderItem belongs to an Order, and can be an Orderable (a Product or a Deal)
class OrderItem < ApplicationRecord
  belongs_to :orderable, polymorphic: true
  belongs_to :order
  has_many :order_item_deals

  has_many :option_order_items
  has_many :options, through: :option_order_items

  has_many :addon_order_items
  has_many :addons, through: :addon_order_items
end
