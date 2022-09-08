ActiveAdmin.register Employee do
  filter :first_name
  filter :last_name
  filter :email
  filter :phone

  index do
    id_column
    column :first_name
    column :last_name
    column :email
    column :phone
    column :designation
    column :manager
    column :restaurant
    actions
  end

  permit_params :first_name, :last_name, :phone, :email, :restaurant, :designation
end
