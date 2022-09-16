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

  permit_params :first_name, :last_name, :phone, :email, :password, :designation, :restaurant_id, :manager_id

  form do |f|
    f.inputs :first_name, :last_name, :phone, :designation
    f.inputs do
      f.input :restaurant_id, :as => :select, :collection => Restaurant.all.collect {|restaurant| [restaurant.name, restaurant.id] }
      f.input :manager_id, :as => :select, :collection => Employee.where(designation: 1).collect {|manager| [manager.first_name, manager.id] }
    end
    f.inputs :email
    if f.object.new_record?
      f.inputs do
        f.input :password, :input_html => { :value => Devise.friendly_token }
      end
    end
    actions
  end

  collection_action :new_invitation do
    @employee = Employee.new
  end

end
