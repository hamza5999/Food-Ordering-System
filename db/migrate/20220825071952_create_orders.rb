# frozen_string_literal: true

class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.datetime :order_time
      t.string :delivery_address
      t.string :order_status
      t.decimal :total_price

      t.timestamps
    end
  end
end
