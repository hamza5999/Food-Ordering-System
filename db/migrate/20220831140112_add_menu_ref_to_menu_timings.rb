# frozen_string_literal: true

class AddMenuRefToMenuTimings < ActiveRecord::Migration[6.1]
  def change
    add_reference :menu_timings, :menu, null: false, foreign_key: true
  end
end
