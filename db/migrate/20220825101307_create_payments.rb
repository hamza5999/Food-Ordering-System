class CreatePayments < ActiveRecord::Migration[6.1]
  def change
    create_table :payments do |t|
      t.decimal :total_amount
      t.datetime :payment_time

      t.timestamps
    end
  end
end
