class DealItemDeal < ApplicationRecord
  belongs_to :deal
  belongs_to :deal_item
end
