# frozen_string_literal: true

class AddOptionRefToDealItem < ActiveRecord::Migration[6.1]
  def change
    add_reference :deal_items, :option, null: false, foreign_key: true
  end
end
