# frozen_string_literal: true

class AddNullConstraintInStartAndEndTimeOfMenuTimings < ActiveRecord::Migration[6.1]
  def change
    remove_column :menu_timings, :start_time, :datetime
    remove_column :menu_timings, :end_time, :datetime

    add_column :menu_timings, :start_time, :datetime, null: false
    add_column :menu_timings, :end_time, :datetime, null: false
  end
end
