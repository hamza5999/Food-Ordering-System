# frozen_string_literal: true

class CreateDiscounts < ActiveRecord::Migration[6.1]
  def change
    create_table :discounts do |t|
      t.string :name
      t.string :status
      t.decimal :value

      t.timestamps
    end
  end
end
