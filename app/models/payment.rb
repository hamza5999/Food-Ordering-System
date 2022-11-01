# frozen_string_literal: true

# It's a payment model that belongs to an order and has a method attribute that can be either online
# or ondelivery
class Payment < ApplicationRecord
  enum method: { online: 0, ondelivery: 1 }

  belongs_to :order

  validates :order_id, uniqueness: true
end
