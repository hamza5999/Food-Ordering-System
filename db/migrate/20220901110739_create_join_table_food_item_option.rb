# frozen_string_literal: true

class CreateJoinTableFoodItemOption < ActiveRecord::Migration[6.1]
  def change
    create_join_table :food_items, :options do |t|
      # t.index [:food_item_id, :option_id]
      # t.index [:option_id, :food_item_id]
    end
  end
end
