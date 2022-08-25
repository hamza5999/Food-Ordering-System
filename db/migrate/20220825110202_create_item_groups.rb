class CreateItemGroups < ActiveRecord::Migration[6.1]
  def change
    create_table :item_groups do |t|
      t.string :group_name

      t.timestamps
    end
  end
end
