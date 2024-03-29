# frozen_string_literal: true

class RemoveNullCheckFromRestaurantForeignKeyOfEmployeesTable < ActiveRecord::Migration[6.1]
  def change
    remove_reference :employees, :restaurant, null: false, foreign_key: true
    add_reference :employees, :restaurant, null: true, foreign_key: true
  end
end
