# frozen_string_literal: true

class AddRestaurantRefToOrders < ActiveRecord::Migration[6.1]
  def change
    add_reference :orders, :restaurant, null: false, foreign_key: true
  end
end
