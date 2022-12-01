# frozen_string_literal: true

class AddAdditionalColumnsToCustomer < ActiveRecord::Migration[6.1]
  def change
    add_column :customers, :first_name, :string
    add_column :customers, :last_name, :string
    add_column :customers, :phone, :string
  end
end
