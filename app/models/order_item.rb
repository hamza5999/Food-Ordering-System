class OrderItem < ApplicationRecord
  belongs_to :order

  has_many :option_order_items
  has_many :options, through: :option_order_items
end
