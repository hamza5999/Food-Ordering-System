# frozen_string_literal: true

# `RestaurantDue` is a class that represents the amount of money that a restaurant is due for an order
class RestaurantDue < ApplicationRecord
  belongs_to :order

  validates :order_id, uniqueness: true
end
