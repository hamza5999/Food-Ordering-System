# frozen_string_literal: true

class AddMethodToPayments < ActiveRecord::Migration[6.1]
  def change
    add_column :payments, :method, :integer, default: 0
  end
end
