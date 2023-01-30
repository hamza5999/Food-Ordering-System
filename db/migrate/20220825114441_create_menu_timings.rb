# frozen_string_literal: true

class CreateMenuTimings < ActiveRecord::Migration[6.1]
  def change
    create_table :menu_timings do |t|
      t.timestamp :start_time
      t.timestamp :end_time

      t.timestamps
    end
  end
end
