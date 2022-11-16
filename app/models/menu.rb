# frozen_string_literal: true

# A Menu belongs to a Restaurant, has many MenuTimings, has many MenuItemMenus, and has many MenuItems
# through MenuItemMenus
class Menu < ApplicationRecord
  belongs_to :restaurant
  has_many :menu_timings
  has_many :menu_items
end
