# frozen_string_literal: true

class AddItemGroupRefToFoodItems < ActiveRecord::Migration[6.1]
  def change
    add_reference :food_items, :item_group, null: false, foreign_key: true
  end
end
