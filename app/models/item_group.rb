# frozen_string_literal: true

# It's a model that represents a group of food items
class ItemGroup < ApplicationRecord
  include Discard::Model

  include MenuItemableConcern
  include DealableConcern

  scope :available_categories, -> { where(availability: true) }
  scope :unavailable_categories, -> { where(availability: false) }

  has_many :food_items
  has_many :options, inverse_of: :item_group, dependent: :destroy

  accepts_nested_attributes_for :options, reject_if: :all_blank, allow_destroy: true

  validates :name, presence: true

  def self.ransackable_scopes(_auth_object = nil)
    %i[available_categories unavailable_categories]
  end
end
