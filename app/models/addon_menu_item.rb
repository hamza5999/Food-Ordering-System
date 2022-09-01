class AddonMenuItem < ApplicationRecord
  belongs_to :addon
  belongs_to :menu_item
end
