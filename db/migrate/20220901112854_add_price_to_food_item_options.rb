# frozen_string_literal: true

class AddPriceToFoodItemOptions < ActiveRecord::Migration[6.1]
  def change
    add_column :food_item_options, :price, :decimal
  end
end
