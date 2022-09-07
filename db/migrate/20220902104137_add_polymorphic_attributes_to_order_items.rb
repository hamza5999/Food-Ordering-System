class AddPolymorphicAttributesToOrderItems < ActiveRecord::Migration[6.1]
  def change
    add_column :order_items, :orderable_type, :string
    add_column :order_items, :orderable_id, :integer
  end
end
