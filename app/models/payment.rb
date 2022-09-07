class Payment < ApplicationRecord
  enum method: {online: 0, ondelivery: 1}

  belongs_to :order

  validates :order_id, uniqueness: true
end
