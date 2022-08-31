class RemoveDealNameFromDeals < ActiveRecord::Migration[6.1]
  def change
    remove_column :deals, :deal_name, :string
  end
end
