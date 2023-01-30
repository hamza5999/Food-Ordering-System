# frozen_string_literal: true

# A restaurant has many orders, employees, restaurant_timings, menu_items, menus, discounts, addons,
# and options
class Restaurant < ApplicationRecord
  has_many :orders
  has_many :employees
  has_many :restaurant_timings
  has_many :menu_items
  has_many :menus
  has_many :discounts
  has_many :addons
  has_many :options
end
