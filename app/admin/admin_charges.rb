ActiveAdmin.register AdminCharge do
  filter :admin_amount
  filter :order_id

  index do
    id_column
    column :admin_amount
    column :order_id
    actions
  end
end
