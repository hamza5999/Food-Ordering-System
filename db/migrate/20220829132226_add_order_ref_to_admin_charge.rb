class AddOrderRefToAdminCharge < ActiveRecord::Migration[6.1]
  def change
    add_reference :admin_charges, :order, null: false, foreign_key: true
  end
end
