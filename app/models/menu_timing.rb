# frozen_string_literal: true

# A MenuTiming belongs to a Menu and has a day of the week.
class MenuTiming < ApplicationRecord
  enum days: { monday: 0, tuesday: 1, wednesday: 2, thursday: 3, friday: 4, saturday: 5, sunday: 6 }

  belongs_to :menu
end
