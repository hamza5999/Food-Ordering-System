# frozen_string_literal: true

class AddStatusToOrders < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :status, :integer, default: 0
  end
end
