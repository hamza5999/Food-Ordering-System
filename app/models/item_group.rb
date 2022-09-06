class ItemGroup < ApplicationRecord
  include MenuableConcern

  has_many :food_items
  has_many :options
  has_many :deal_items, as: :dealable
end
