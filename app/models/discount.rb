# frozen_string_literal: true

# It's a model class for Discounts
class Discount < ApplicationRecord
  include Discard::Model

  enum kind: { fixed: 0, percentage: 1 }

  scope :active_discounts, -> { where(status: true) }
  scope :expired_discounts, -> { where(status: false) }

  belongs_to :restaurant
  has_many :food_items, dependent: :destroy
  has_many :discount_timelines, dependent: :destroy, inverse_of: :discount

  accepts_nested_attributes_for :discount_timelines, reject_if: :all_blank, allow_destroy: true

  validates :name, :value, presence: true
  validates_numericality_of :value, greater_than_or_equal_to: 1, less_than_or_equal_to: 100,
                                    message: 'should be in between 1 and 100'

  def self.ransackable_scopes(_auth_object = nil)
    %i[active_discounts expired_discounts]
  end
end
