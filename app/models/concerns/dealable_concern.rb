# frozen_string_literal: true

module DealableConcern
  extend ActiveSupport::Concern

  included do
    has_many :deal_items, as: :dealable
  end
end
