ActiveAdmin.register Customer do
  index do
    id_column
    column :first_name
    column :last_name
    column :phone
    column :email
    actions
  end
end
