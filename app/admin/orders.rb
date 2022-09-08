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

  permit_params :customer, :delivery_address, :total_price, :restaurant, :status
end
