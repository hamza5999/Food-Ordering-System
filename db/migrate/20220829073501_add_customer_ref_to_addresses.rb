# frozen_string_literal: true

class AddCustomerRefToAddresses < ActiveRecord::Migration[6.1]
  def change
    add_reference :addresses, :customer, null: false, foreign_key: true
  end
end
