# frozen_string_literal: true

# `VoucherTimeline` is a class that belongs to `Voucher`
class VoucherTimeline < ApplicationRecord
  belongs_to :voucher
end
