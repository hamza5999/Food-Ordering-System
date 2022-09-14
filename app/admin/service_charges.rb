ActiveAdmin.register ServiceCharge do
  filter :cuttoff

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

  permit_params :cuttoff

  form do |f|
    f.inputs :cuttoff
    actions
  end
end
