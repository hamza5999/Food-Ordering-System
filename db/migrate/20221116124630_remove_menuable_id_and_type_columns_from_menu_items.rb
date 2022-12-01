# frozen_string_literal: true

class RemoveMenuableIdAndTypeColumnsFromMenuItems < ActiveRecord::Migration[6.1]
  def change
    remove_column :menu_items, :menuable_type, :string
    remove_column :menu_items, :menuable_id, :integer
  end
end
