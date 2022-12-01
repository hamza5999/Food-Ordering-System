# frozen_string_literal: true

class RemoveMenuRefFromMenuItems < ActiveRecord::Migration[6.1]
  def change
    remove_reference :menu_items, :menu, null: false, foreign_key: true
  end
end
