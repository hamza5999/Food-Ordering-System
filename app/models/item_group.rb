class ItemGroup < ApplicationRecord
  include MenuableConcern
  include DealableConcern

  has_many :food_items
  has_many :options, inverse_of: :item_group

  accepts_nested_attributes_for :options, reject_if: :all_blank, allow_destroy: true
end
