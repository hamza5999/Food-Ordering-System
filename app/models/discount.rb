class Discount < ApplicationRecord
  enum kind: {fixed: 0, percentage: 1}

  scope :active_discounts, -> { where(status: 1) }
  scope :expired_discounts, -> { where(status: 0) }

  belongs_to :restaurant
  has_many :food_items
  has_many :discount_timelines

  def self.ransackable_scopes(auth_object = nil)
    %i(active_discounts expired_discounts)
  end
end
