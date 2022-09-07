ActiveAdmin.register Order do
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
end
