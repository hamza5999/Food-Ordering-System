# frozen_string_literal: true

class RemoveGroupNameFromItemGroups < ActiveRecord::Migration[6.1]
  def change
    remove_column :item_groups, :group_name, :string
  end
end
