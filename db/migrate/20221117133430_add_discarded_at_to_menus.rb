# frozen_string_literal: true

class AddDiscardedAtToMenus < ActiveRecord::Migration[6.1]
  def change
    add_column :menus, :discarded_at, :datetime
    add_index :menus, :discarded_at
  end
end
