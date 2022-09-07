class CustomerVoucher < ApplicationRecord
  belongs_to :customer
  belongs_to :voucher
end
