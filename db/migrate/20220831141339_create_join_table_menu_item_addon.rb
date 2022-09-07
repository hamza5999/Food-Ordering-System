class CreateJoinTableMenuItemAddon < ActiveRecord::Migration[6.1]
  def change
    create_join_table :menu_items, :addons do |t|
      # t.index [:menu_item_id, :addon_id]
      # t.index [:addon_id, :menu_item_id]
    end
  end
end
