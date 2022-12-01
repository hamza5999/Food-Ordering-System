# frozen_string_literal: true

# `OrderItemDeal` is a class that belongs to `OrderItem`
class OrderItemDeal < ApplicationRecord
  belongs_to :order_item
end
