# frozen_string_literal: true

class CreateVouchers < ActiveRecord::Migration[6.1]
  def change
    create_table :vouchers do |t|
      t.string :name
      t.integer :promo_code
      t.decimal :promo_percentage

      t.timestamps
    end
  end
end
