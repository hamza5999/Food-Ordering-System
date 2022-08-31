class ItemGroup < ApplicationRecord
  has_many :food_items
  has_many :options
end
