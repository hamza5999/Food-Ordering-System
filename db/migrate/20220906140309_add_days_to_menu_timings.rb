# frozen_string_literal: true

class AddDaysToMenuTimings < ActiveRecord::Migration[6.1]
  def change
    add_column :menu_timings, :days, :integer, default: 0
  end
end
