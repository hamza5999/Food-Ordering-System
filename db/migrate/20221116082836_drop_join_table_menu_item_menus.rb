# frozen_string_literal: true

class DropJoinTableMenuItemMenus < ActiveRecord::Migration[6.1]
  def change
    drop_join_table :menu_item, :menus
  end
end
