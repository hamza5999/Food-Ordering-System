class Menu < ApplicationRecord
  belongs_to :restaurant
  has_many :menu_timings
  has_and_belongs_to_many :menu_items
end
