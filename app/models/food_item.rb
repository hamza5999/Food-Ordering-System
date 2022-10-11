class FoodItem < ApplicationRecord
  include Discard::Model

  include OrderableConcern
  include DealableConcern

  belongs_to :item_group
  belongs_to :discount, optional: true

  has_many :food_item_options
  has_many :options, through: :food_item_options
end
