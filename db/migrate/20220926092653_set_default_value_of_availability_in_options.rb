class SetDefaultValueOfAvailabilityInOptions < ActiveRecord::Migration[6.1]
  def change
    remove_column :options, :availability, :integer
    add_column :options, :availability, :integer, default: 0
  end
end
