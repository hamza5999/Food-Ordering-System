# frozen_string_literal: true

class RenameOptionsOrderItemsTableToOptionOrderItems < ActiveRecord::Migration[6.1]
  def change
    rename_table :options_order_items, :option_order_items
  end
end
