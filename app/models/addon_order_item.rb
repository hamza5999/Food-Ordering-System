# frozen_string_literal: true

# `AddonOrderItem` is a join table between `OrderItem` and `Addon`
class AddonOrderItem < ApplicationRecord
  belongs_to :order_item
  belongs_to :addon
end
