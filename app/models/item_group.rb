class ItemGroup < ApplicationRecord
  include MenuableConcern
  include DealableConcern

  has_many :food_items
  has_many :options

  accepts_nested_attributes_for :options
end
