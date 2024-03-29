# frozen_string_literal: true

class AddDiscountRefToFoodItems < ActiveRecord::Migration[6.1]
  def change
    add_reference :food_items, :discount, null: false, foreign_key: true
  end
end
