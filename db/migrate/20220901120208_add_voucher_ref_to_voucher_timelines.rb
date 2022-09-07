class AddVoucherRefToVoucherTimelines < ActiveRecord::Migration[6.1]
  def change
    add_reference :voucher_timelines, :voucher, null: false, foreign_key: true
  end
end
