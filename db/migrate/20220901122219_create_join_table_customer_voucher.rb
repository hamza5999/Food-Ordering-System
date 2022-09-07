class CreateJoinTableCustomerVoucher < ActiveRecord::Migration[6.1]
  def change
    create_join_table :customers, :vouchers do |t|
      # t.index [:customer_id, :voucher_id]
      # t.index [:voucher_id, :customer_id]
    end
  end
end
