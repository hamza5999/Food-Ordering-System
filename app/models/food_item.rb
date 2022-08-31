class FoodItem < ApplicationRecord
  belongs_to :item_group
  belongs_to :discount
end
