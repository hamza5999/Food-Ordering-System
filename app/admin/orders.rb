ActiveAdmin.register Order do
  filter :restaurant
  filter :voucher
  filter :total_price
  filter :delivery_address
  filter :order_time

  index do
    id_column
    column :customer
    column :order_time
    column :delivery_address
    column :restaurant
    column :total_price
    column :status
    actions
  end

  show do
    attributes_table do
      row :customer
      row :order_time
      row :delivery_address
      row :restaurant
      row :total_price
      row :status
    end
    active_admin_comments
  end

  permit_params :delivery_address, :total_price, :status

  form do |f|
    f.inputs :delivery_address, :total_price, :status
    actions
  end
end
