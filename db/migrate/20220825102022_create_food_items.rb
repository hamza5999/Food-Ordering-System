# frozen_string_literal: true

class CreateFoodItems < ActiveRecord::Migration[6.1]
  def change
    create_table :food_items do |t|
      t.string :name
      t.decimal :price

      t.timestamps
    end
  end
end
