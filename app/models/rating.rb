# frozen_string_literal: true

# A rating belongs to a customer and an order, and the order_id must be unique.
class Rating < ApplicationRecord
  belongs_to :customer
  belongs_to :order

  validates :order_id, uniqueness: true
end
