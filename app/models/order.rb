# frozen_string_literal: true

# An order belongs to a restaurant, voucher, customer, and employee, has one admin charge, restaurant
# due, payment, and rating, and has many order items
class Order < ApplicationRecord
  enum status: { pending: 0, complete: 1 }

  belongs_to :restaurant
  belongs_to :voucher
  belongs_to :customer
  belongs_to :employee

  has_one :admin_charge
  has_one :restaurant_due
  has_one :payment
  has_one :rating

  has_many :order_items
end
