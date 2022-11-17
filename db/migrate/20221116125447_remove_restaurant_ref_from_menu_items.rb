# frozen_string_literal: true

class RemoveRestaurantRefFromMenuItems < ActiveRecord::Migration[6.1]
  def change
    remove_reference :menu_items, :restaurant
  end
end
