ActiveAdmin.register Voucher do

  index do
    id_column
    column :name
    column :promo_code
    column :promo_percentage
    actions
  end
end
