# frozen_string_literal: true

class AddMenuRefToMenuItems < ActiveRecord::Migration[6.1]
  def change
    add_reference :menu_items, :menu, null: false, foreign_key: true
  end
end
