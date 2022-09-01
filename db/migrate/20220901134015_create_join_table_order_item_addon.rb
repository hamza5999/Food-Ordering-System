class CreateJoinTableOrderItemAddon < ActiveRecord::Migration[6.1]
  def change
    create_join_table :order_items, :addons do |t|
      # t.index [:order_item_id, :addon_id]
      # t.index [:addon_id, :order_item_id]
    end
  end
end
