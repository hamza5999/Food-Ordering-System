# frozen_string_literal: true

class RemoveNullCheckFromDiscountForeignKeyOfFoodItemsTable < ActiveRecord::Migration[6.1]
  def change
    remove_reference :food_items, :discount, null: false, foreign_key: true
    add_reference :food_items, :discount, null: true, foreign_key: true
  end
end
