# frozen_string_literal: true

# Addons belong to a restaurant, have many menu items and order items, and have many addon menu items
# and addon order items
class Addon < ApplicationRecord
  belongs_to :restaurant

  has_many :addon_menu_items
  has_many :menu_items, through: :addon_menu_items

  has_many :addon_order_items
  has_many :order_items, through: :addon_order_items
end
