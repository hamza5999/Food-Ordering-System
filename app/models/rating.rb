class Rating < ApplicationRecord
  belongs_to :customer
  belongs_to :order

  validates :order_id, uniqueness: true
end
