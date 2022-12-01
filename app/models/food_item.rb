# frozen_string_literal: true

# It's a food item that belongs to an item group, has many options, and can be ordered
class FoodItem < ApplicationRecord
  include Discard::Model

  include OrderableConcern
  include DealableConcern

  belongs_to :item_group
  belongs_to :discount, optional: true

  has_many :food_item_options
  has_many :options, through: :food_item_options

  validates :name, presence: true

  accepts_nested_attributes_for :food_item_options, allow_destroy: true, reject_if: :all_blank
end
