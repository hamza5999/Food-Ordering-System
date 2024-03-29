# frozen_string_literal: true

class AddItemGroupRefToOptions < ActiveRecord::Migration[6.1]
  def change
    add_reference :options, :item_group, null: false, foreign_key: true
  end
end
