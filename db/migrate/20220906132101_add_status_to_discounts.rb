# frozen_string_literal: true

class AddStatusToDiscounts < ActiveRecord::Migration[6.1]
  def change
    add_column :discounts, :status, :integer, default: 0
  end
end
