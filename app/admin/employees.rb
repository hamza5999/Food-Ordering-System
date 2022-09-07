ActiveAdmin.register Employee do
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
end
