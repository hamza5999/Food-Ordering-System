# frozen_string_literal: true

class RemoveDealPriceFromDeals < ActiveRecord::Migration[6.1]
  def change
    remove_column :deals, :deal_price, :decimal
  end
end
