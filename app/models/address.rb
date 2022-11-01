# frozen_string_literal: true

# An address belongs to a customer.
class Address < ApplicationRecord
  belongs_to :customer
end
