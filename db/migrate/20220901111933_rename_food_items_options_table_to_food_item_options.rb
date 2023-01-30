# frozen_string_literal: true

class RenameFoodItemsOptionsTableToFoodItemOptions < ActiveRecord::Migration[6.1]
  def change
    rename_table :food_items_options, :food_item_options
  end
end
