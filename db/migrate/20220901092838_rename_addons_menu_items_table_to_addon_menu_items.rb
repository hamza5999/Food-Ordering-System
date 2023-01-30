# frozen_string_literal: true

class RenameAddonsMenuItemsTableToAddonMenuItems < ActiveRecord::Migration[6.1]
  def change
    rename_table :addons_menu_items, :addon_menu_items
  end
end
