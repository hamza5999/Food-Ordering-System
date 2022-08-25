class CreateRatings < ActiveRecord::Migration[6.1]
  def change
    create_table :ratings do |t|
      t.string :description
      t.integer :value

      t.timestamps
    end
  end
end
