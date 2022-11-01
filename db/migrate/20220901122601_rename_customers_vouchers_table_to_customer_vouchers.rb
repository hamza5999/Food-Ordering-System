# frozen_string_literal: true

class RenameCustomersVouchersTableToCustomerVouchers < ActiveRecord::Migration[6.1]
  def change
    rename_table :customers_vouchers, :customer_vouchers
  end
end
