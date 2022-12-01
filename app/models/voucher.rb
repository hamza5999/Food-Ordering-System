# frozen_string_literal: true

# A Voucher has many Orders, VoucherTimelines, CustomerVouchers, and Customers
class Voucher < ApplicationRecord
  has_many :orders
  has_many :voucher_timelines

  has_many :customer_vouchers
  has_many :customers, through: :customer_vouchers
end
