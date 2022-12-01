# frozen_string_literal: true

class AddDefaultValueInAvailabilityColumnOfMenus < ActiveRecord::Migration[6.1]
  def change
    remove_column :menus, :availability, :boolean
    add_column :menus, :availability, :boolean, default: true
  end
end
