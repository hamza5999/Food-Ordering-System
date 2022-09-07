class AddRestaurantRefToRestaurantTimings < ActiveRecord::Migration[6.1]
  def change
    add_reference :restaurant_timings, :restaurant, null: false, foreign_key: true
  end
end
