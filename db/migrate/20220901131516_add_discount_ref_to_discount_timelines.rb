class AddDiscountRefToDiscountTimelines < ActiveRecord::Migration[6.1]
  def change
    add_reference :discount_timelines, :discount, null: false, foreign_key: true
  end
end
