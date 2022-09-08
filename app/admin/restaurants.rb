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

  permit_params :name, :timings, :location, :availability
end
