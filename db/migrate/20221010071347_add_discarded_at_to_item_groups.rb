class AddDiscardedAtToItemGroups < ActiveRecord::Migration[6.1]
  def change
    add_column :item_groups, :discarded_at, :datetime
    add_index :item_groups, :discarded_at
  end
end
