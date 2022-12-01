# frozen_string_literal: true

class ChangeAvailabilityTypeToBooleanInItemGroups < ActiveRecord::Migration[6.1]
  def change
    remove_column :item_groups, :availability, :integer
    add_column :item_groups, :availability, :boolean, default: 1
  end
end
