# frozen_string_literal: true

class CreateDealItems < ActiveRecord::Migration[6.1]
  def change
    create_table :deal_items do |t|
      t.string :name

      t.timestamps
    end
  end
end
