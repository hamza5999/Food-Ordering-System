ActiveAdmin.register ServiceCharge do

  index do
    id_column
    column :cuttoff
    actions
  end

  show do
    attributes_table do
      row :cuttoff
    end
    active_admin_comments
  end
end
