# frozen_string_literal: true

class AddRestaurantRefToMenus < ActiveRecord::Migration[6.1]
  def change
    add_reference :menus, :restaurant, null: false, foreign_key: true
  end
end
