ActiveAdmin.register AdminCharge do
  index do
    id_column
    column :admin_amount
    column :order_id
    actions
  end
end
