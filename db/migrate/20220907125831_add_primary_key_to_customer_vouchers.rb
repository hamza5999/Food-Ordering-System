# frozen_string_literal: true

class AddPrimaryKeyToCustomerVouchers < ActiveRecord::Migration[6.1]
  def change
    add_column :customer_vouchers, :id, :primary_key
  end
end
