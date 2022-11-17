# frozen_string_literal: true

module MenuItemableConcern
  extend ActiveSupport::Concern

  included do
    has_many :menu_items, as: :menu_itemable
  end
end
