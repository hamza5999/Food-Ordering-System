# frozen_string_literal: true

class AddCustomerRefToOrders < ActiveRecord::Migration[6.1]
  def change
    add_reference :orders, :customer, null: false, foreign_key: true
  end
end
