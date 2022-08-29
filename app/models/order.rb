class Order < ApplicationRecord
  belongs_to :restaurant
  belongs_to :voucher
  belongs_to :customer
end
