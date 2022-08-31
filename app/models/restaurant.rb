class Restaurant < ApplicationRecord
  has_many :orders
  has_many :employees
  has_many :restaurant_timings
end
