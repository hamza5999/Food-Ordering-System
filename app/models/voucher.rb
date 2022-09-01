class Voucher < ApplicationRecord
  has_many :orders
  has_many :voucher_timelines
end
