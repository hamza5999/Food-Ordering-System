class MenuItem < ApplicationRecord
  belongs_to :restaurant

  has_many :menu_item_menus
  has_many :menus, through: :menu_item_menus

  has_many :addon_menu_items
  has_many :addons, through: :addon_menu_items
end
