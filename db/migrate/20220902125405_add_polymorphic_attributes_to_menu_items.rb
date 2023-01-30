# frozen_string_literal: true

class AddPolymorphicAttributesToMenuItems < ActiveRecord::Migration[6.1]
  def change
    add_column :menu_items, :menuable_type, :string
    add_column :menu_items, :menuable_id, :integer
  end
end
