class AddOrderRefToRestaurantDue < ActiveRecord::Migration[6.1]
  def change
    add_reference :restaurant_dues, :order, null: false, foreign_key: true
  end
end
