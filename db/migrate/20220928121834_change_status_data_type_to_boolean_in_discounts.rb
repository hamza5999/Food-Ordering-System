# frozen_string_literal: true

class ChangeStatusDataTypeToBooleanInDiscounts < ActiveRecord::Migration[6.1]
  def change
    remove_column :discounts, :status, :integer
    add_column :discounts, :status, :boolean, default: 1
  end
end
