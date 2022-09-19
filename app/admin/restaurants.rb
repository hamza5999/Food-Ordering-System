ActiveAdmin.register Restaurant do
  filter :name
  filter :location
  filter :menus
  filter :discounts
  filter :restaurant_timings

  index do
    id_column
    column :name
    column :timings
    column :location
    column :availability
    actions
  end

  show do
    attributes_table do
      row :name
      row :timings
      row :location
      row :availability
    end
    active_admin_comments
  end

  permit_params :name, :timings, :location, :availability

  form do |f|
    f.inputs :name, :timings, :location, :availability
    actions
  end
end
