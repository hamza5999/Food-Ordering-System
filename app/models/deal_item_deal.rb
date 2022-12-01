# frozen_string_literal: true

# This class is a join table between the Deal and DealItem classes
class DealItemDeal < ApplicationRecord
  belongs_to :deal
  belongs_to :deal_item
end
