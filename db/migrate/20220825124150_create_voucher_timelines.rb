class CreateVoucherTimelines < ActiveRecord::Migration[6.1]
  def change
    create_table :voucher_timelines do |t|
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
