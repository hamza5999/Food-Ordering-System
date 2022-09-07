ActiveAdmin.register Restaurant do
  index do
    id_column
    column :name
    column :timings
    column :location
    column :availability
    actions
  end
end
