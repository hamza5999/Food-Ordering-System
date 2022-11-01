# frozen_string_literal: true

# `FoodItemOption` is a join table between `FoodItem` and `Option` that allows us to associate
# multiple options with a single food item
class FoodItemOption < ApplicationRecord
  belongs_to :option
  belongs_to :food_item

  delegate :name, to: :option, prefix: true
end
