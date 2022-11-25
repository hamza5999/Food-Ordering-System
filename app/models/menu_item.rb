# frozen_string_literal: true

# A MenuItem belongs to a MenuItemable, which is a polymorphic association. It belongs to a Restaurant and Menu
class MenuItem < ApplicationRecord
  belongs_to :menu_itemable, polymorphic: true
  belongs_to :menu

  has_many :addon_menu_items
  has_many :addons, through: :addon_menu_items
end
