# frozen_string_literal: true

class AddTypeToDiscounts < ActiveRecord::Migration[6.1]
  def change
    add_column :discounts, :type, :integer, default: 0
  end
end
