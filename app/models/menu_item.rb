class MenuItem < ApplicationRecord
  belongs_to :restaurant

  has_many :menu_item_menus
  has_many :menus, through: :menu_item_menus

  has_and_belongs_to_many :addons
end
