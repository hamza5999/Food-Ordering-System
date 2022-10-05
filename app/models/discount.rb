class Discount < ApplicationRecord
  include Discard::Model

  enum kind: {fixed: 0, percentage: 1}

  scope :active_discounts, -> { where(status: 1) }
  scope :expired_discounts, -> { where(status: 0) }

  belongs_to :restaurant
  has_many :food_items, dependent: :destroy
  has_many :discount_timelines, dependent: :destroy

  accepts_nested_attributes_for :discount_timelines, reject_if: :all_blank, allow_destroy: true

  validates :name, :value, presence: true
  validates_numericality_of :value, greater_than_or_equal_to: 1, less_than_or_equal_to: 100, message: "should be in between 1 and 100"

  def self.ransackable_scopes(auth_object = nil)
    %i(active_discounts expired_discounts)
  end
end
