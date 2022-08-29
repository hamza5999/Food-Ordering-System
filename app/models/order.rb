class Order < ApplicationRecord
  belongs_to :restaurant
  belongs_to :voucher
  belongs_to :customer
  belongs_to :employee
  has_one :admin_charge
end
