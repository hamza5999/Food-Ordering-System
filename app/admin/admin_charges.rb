ActiveAdmin.register AdminCharge do
  filter :admin_amount
  filter :order_id

  index do
    id_column
    column :admin_amount
    column :order_id
    actions
  end

  show do
    attributes_table do
      row :order_id
      row :admin_amount
    end
    active_admin_comments
  end
end
