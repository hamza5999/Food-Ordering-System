class CreateOrderItemDeals < ActiveRecord::Migration[6.1]
  def change
    create_table :order_item_deals do |t|
      t.integer :deal_id
      t.integer :item_group_id
      t.integer :food_item_id

      t.timestamps
    end
  end
end
