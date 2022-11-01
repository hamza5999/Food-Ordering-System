# frozen_string_literal: true

class RenameAddonsOrderItemsTableToAddonOrderItems < ActiveRecord::Migration[6.1]
  def change
    rename_table :addons_order_items, :addon_order_items
  end
end
