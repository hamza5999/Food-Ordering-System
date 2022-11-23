# frozen_string_literal: true

# A Menu belongs to a Restaurant, has many MenuTimings, has many MenuItemMenus, and has many MenuItems
# through MenuItemMenus
class Menu < ApplicationRecord
  include Discard::Model

  belongs_to :restaurant

  has_many :menu_items
  has_many :menu_timings, dependent: :destroy, inverse_of: :menu

  accepts_nested_attributes_for :menu_timings, reject_if: :all_blank, allow_destroy: true

  validates :title, presence: true
end
