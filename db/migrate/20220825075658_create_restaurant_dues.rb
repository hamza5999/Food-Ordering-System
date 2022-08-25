class CreateRestaurantDues < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurant_dues do |t|
      t.decimal :restaurant_dues

      t.timestamps
    end
  end
end
