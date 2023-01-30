# frozen_string_literal: true

class AddPrimaryKeyToFoodItemOptions < ActiveRecord::Migration[6.1]
  def change
    add_column :food_item_options, :id, :primary_key
  end
end
