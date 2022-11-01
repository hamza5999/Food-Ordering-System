# frozen_string_literal: true

module MenuableConcern
  extend ActiveSupport::Concern

  included do
    has_many :menu_items, as: :menuable
  end
end
