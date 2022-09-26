class AddAvailabilityToOptions < ActiveRecord::Migration[6.1]
  def change
    add_column :options, :availability, :integer
  end
end
