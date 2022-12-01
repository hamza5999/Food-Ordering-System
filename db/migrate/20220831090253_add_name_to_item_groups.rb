# frozen_string_literal: true

class AddNameToItemGroups < ActiveRecord::Migration[6.1]
  def change
    add_column :item_groups, :name, :string
  end
end
