# frozen_string_literal: true

module DiscountsHelper
  def getDateOnly(start_date)
    start_date.strftime('%d-%m-%Y')
  end
end
