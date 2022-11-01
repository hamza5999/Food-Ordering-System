# frozen_string_literal: true

# > The AdminCharge class is a model that represents a charge made by an admin to a customer's order
class AdminCharge < ApplicationRecord
  belongs_to :order

  validates :order_id, uniqueness: true
end
