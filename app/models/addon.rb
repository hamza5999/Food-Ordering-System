class Addon < ApplicationRecord
  belongs_to :restaurant

  has_many :addon_menu_items
  has_many :menu_items, through: :addon_menu_items
end
