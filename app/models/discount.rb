class Discount < ApplicationRecord
  enum kind: {fixed: 0, percentage: 1}

  scope :active_discounts, -> { where(:status => 1)}
  # Ex:- scope :active, -> {where(:active => true)}
  belongs_to :restaurant
  has_many :food_items
  has_many :discount_timelines
end
