# frozen_string_literal: true

class RemoveStatusFromDiscounts < ActiveRecord::Migration[6.1]
  def change
    remove_column :discounts, :status, :string
  end
end
