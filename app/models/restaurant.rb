class Restaurant < ApplicationRecord
  has_many :orders
  has_many :employees
end
