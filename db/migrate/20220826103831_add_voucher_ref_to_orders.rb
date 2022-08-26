class AddVoucherRefToOrders < ActiveRecord::Migration[6.1]
  def change
    add_reference :orders, :voucher, null: false, foreign_key: true
  end
end
