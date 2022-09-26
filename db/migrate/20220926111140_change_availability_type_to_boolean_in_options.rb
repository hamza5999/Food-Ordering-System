class ChangeAvailabilityTypeToBooleanInOptions < ActiveRecord::Migration[6.1]
  def change
    remove_column :options, :availability, :integer
    add_column :options, :availability, :boolean, default: 1
  end
end
