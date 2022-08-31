class Option < ApplicationRecord
  belongs_to :restaurant
  has_and_belongs_to_many :order_items
end
