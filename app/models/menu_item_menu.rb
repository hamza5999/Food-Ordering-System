# frozen_string_literal: true

# `MenuItemMenu` is a join table between `Menu` and `MenuItem`
class MenuItemMenu < ApplicationRecord
  belongs_to :menu
  belongs_to :menu_item
end
