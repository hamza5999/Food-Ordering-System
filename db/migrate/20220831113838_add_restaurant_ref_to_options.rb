# frozen_string_literal: true

class AddRestaurantRefToOptions < ActiveRecord::Migration[6.1]
  def change
    add_reference :options, :restaurant, null: false, foreign_key: true
  end
end
