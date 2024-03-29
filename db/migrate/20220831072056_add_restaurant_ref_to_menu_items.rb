# frozen_string_literal: true

class AddRestaurantRefToMenuItems < ActiveRecord::Migration[6.1]
  def change
    add_reference :menu_items, :restaurant, null: false, foreign_key: true
  end
end
