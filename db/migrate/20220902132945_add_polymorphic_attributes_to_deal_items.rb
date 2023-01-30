# frozen_string_literal: true

class AddPolymorphicAttributesToDealItems < ActiveRecord::Migration[6.1]
  def change
    add_column :deal_items, :dealable_type, :string
    add_column :deal_items, :dealable_id, :integer
  end
end
