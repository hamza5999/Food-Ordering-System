class FoodItemOption < ApplicationRecord
  belongs_to :option
  belongs_to :food_item
end
