# frozen_string_literal: true

class RemoveOptionRefFromDealItems < ActiveRecord::Migration[6.1]
  def change
    remove_reference :deal_items, :option, null: false, foreign_key: true
  end
end
