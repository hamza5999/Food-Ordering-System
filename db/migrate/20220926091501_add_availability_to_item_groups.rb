# frozen_string_literal: true

class AddAvailabilityToItemGroups < ActiveRecord::Migration[6.1]
  def change
    add_column :item_groups, :availability, :integer
  end
end
