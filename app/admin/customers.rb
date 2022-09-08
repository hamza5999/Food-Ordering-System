ActiveAdmin.register Customer do
  filter :first_name
  filter :last_name
  filter :email
  filter :phone

  index do
    id_column
    column :first_name
    column :last_name
    column :phone
    column :email
    actions
  end

  show do
    attributes_table do
      row :first_name
      row :last_name
      row :phone
      row :email
    end
    active_admin_comments
  end

  permit_params :first_name, :last_name, :phone, :email

  form do |f|
    f.inputs :first_name, :last_name, :phone, :email
    actions
  end
end
