class AddNameAndPriceToDeals < ActiveRecord::Migration[6.1]
  def change
    add_column :deals, :name, :string
    add_column :deals, :price, :decimal
  end
end
