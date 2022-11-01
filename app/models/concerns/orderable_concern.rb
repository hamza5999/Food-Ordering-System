# frozen_string_literal: true

module OrderableConcern
  extend ActiveSupport::Concern

  included do
    has_many :order_items, as: :orderable
  end
end
