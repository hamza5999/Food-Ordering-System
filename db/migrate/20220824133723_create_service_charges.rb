# frozen_string_literal: true

class CreateServiceCharges < ActiveRecord::Migration[6.1]
  def change
    create_table :service_charges do |t|
      t.integer :cuttoff

      t.timestamps
    end
  end
end
