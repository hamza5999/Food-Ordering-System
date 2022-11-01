# frozen_string_literal: true

class CreateMenuItems < ActiveRecord::Migration[6.1]
  def change
    create_table :menu_items, &:timestamps
  end
end
