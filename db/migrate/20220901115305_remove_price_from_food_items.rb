class RemovePriceFromFoodItems < ActiveRecord::Migration[6.1]
  def change
    remove_column :food_items, :price, :decimal
  end
end
