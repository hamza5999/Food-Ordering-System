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
end
