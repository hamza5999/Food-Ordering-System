# frozen_string_literal: true

# > A `DiscountTimeline` belongs to a `Discount`
class DiscountTimeline < ApplicationRecord
  belongs_to :discount
end
