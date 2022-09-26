class SetDefaultValueOfAvailabilityInItemGroups < ActiveRecord::Migration[6.1]
  def change
    remove_column :item_groups, :availability, :integer
    add_column :item_groups, :availability, :integer, default: 0
  end
end
