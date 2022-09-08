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

  show do
    attributes_table do
      row :first_name
      row :last_name
      row :email
      row :phone
      row :designation
      row :manager
      row :restaurant
    end
    active_admin_comments
  end

  permit_params :first_name, :last_name, :phone, :email, :restaurant, :designation

  form do |f|
    f.inputs :first_name, :last_name, :phone, :email, :restaurant, :designation
    actions
  end
end
