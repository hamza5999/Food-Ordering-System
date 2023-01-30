# frozen_string_literal: true

class CreateAdminCharges < ActiveRecord::Migration[6.1]
  def change
    create_table :admin_charges do |t|
      t.decimal :admin_amount

      t.timestamps
    end
  end
end
