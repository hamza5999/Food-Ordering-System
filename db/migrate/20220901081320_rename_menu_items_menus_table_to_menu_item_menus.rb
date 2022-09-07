class RenameMenuItemsMenusTableToMenuItemMenus < ActiveRecord::Migration[6.1]
  def change
    rename_table :menu_items_menus, :menu_item_menus
  end
end
