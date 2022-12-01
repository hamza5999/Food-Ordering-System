# frozen_string_literal: true

# A CustomerVoucher is a join table between a Customer and a Voucher.
class CustomerVoucher < ApplicationRecord
  belongs_to :customer
  belongs_to :voucher
end
