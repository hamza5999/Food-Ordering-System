class RenameDealItemsDealsTableToDealItemDeals < ActiveRecord::Migration[6.1]
  def change
    rename_table :deal_items_deals, :deal_item_deals
  end
end
