# frozen_string_literal: true

class RemoveOrderStatusFromOrders < ActiveRecord::Migration[6.1]
  def change
    remove_column :orders, :order_status, :string
  end
end
