# frozen_string_literal: true

# `OptionOrderItem` is a join table between `OrderItem` and `Option`
class OptionOrderItem < ApplicationRecord
  belongs_to :order_item
  belongs_to :option
end
