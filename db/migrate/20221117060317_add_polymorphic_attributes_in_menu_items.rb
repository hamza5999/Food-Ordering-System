# frozen_string_literal: true

class AddPolymorphicAttributesInMenuItems < ActiveRecord::Migration[6.1]
  def change
    add_reference :menu_items, :menu_itemable, polymorphic: true, null: false
  end
end
