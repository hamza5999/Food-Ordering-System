class ItemGroup < ApplicationRecord
  include MenuableConcern
  include DealableConcern

  scope :available_categories, -> { where(:availability => true)}

  has_many :food_items
  has_many :options, inverse_of: :item_group, dependent: :destroy

  accepts_nested_attributes_for :options, reject_if: :all_blank, allow_destroy: true

  validates :name, presence: true
end
