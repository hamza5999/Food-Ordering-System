# frozen_string_literal: true

class AddDaysToRestaurantTimings < ActiveRecord::Migration[6.1]
  def change
    add_column :restaurant_timings, :days, :integer, default: 0
  end
end
