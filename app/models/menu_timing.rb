# frozen_string_literal: true

# A MenuTiming belongs to a Menu and has a day of the week.
class MenuTiming < ApplicationRecord
  enum days: { daily: 0, monday: 1, tuesday: 2, wednesday: 3, thursday: 4, friday: 5, saturday: 6,
               sunday: 7, weekends: 8, weekdays: 9 }

  belongs_to :menu

  validates :start_time, :end_time, presence: true
end
