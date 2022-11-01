# frozen_string_literal: true

# A MenuItem belongs to a Menuable, which is a polymorphic association, and belongs to a Restaurant.
# It has many MenuItemMenus, which is a join table, and has many Menus through MenuItemMenus. It has
# many AddonMenuItems, which is a join table, and has many Addons through AddonMenuItems
class MenuItem < ApplicationRecord
  belongs_to :menuable, polymorphic: true
  belongs_to :restaurant

  has_many :menu_item_menus
  has_many :menus, through: :menu_item_menus

  has_many :addon_menu_items
  has_many :addons, through: :addon_menu_items
end
