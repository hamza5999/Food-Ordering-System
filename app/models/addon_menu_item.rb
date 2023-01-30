# frozen_string_literal: true

# `AddonMenuItem` is a join table between `Addon` and `MenuItem`
class AddonMenuItem < ApplicationRecord
  belongs_to :addon
  belongs_to :menu_item
end
