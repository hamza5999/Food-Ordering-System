class DealItem < ApplicationRecord
  belongs_to :option

  validates :option_id, uniqueness: true
end
