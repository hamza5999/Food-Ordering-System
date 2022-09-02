class ItemGroup < ApplicationRecord
  has_many :food_items
  has_many :options
  has_many :menu_items, as: :menuable
end
