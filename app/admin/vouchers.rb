ActiveAdmin.register Voucher do
  filter :name
  filter :promo_code
  filter :promo_percentage

  index do
    id_column
    column :name
    column :promo_code
    column :promo_percentage
    actions
  end

  show do
    attributes_table do
      row :name
      row :promo_code
      row :promo_percentage
    end
    active_admin_comments
  end
end
