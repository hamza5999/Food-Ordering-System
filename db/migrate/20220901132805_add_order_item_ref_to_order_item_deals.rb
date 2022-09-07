class AddOrderItemRefToOrderItemDeals < ActiveRecord::Migration[6.1]
  def change
    add_reference :order_item_deals, :order_item, null: false, foreign_key: true
  end
end
