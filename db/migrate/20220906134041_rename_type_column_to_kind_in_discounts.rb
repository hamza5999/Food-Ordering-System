# frozen_string_literal: true

class RenameTypeColumnToKindInDiscounts < ActiveRecord::Migration[6.1]
  def change
    rename_column :discounts, :type, :kind
  end
end
