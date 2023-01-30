# frozen_string_literal: true

# `RestaurantTiming` is a class that belongs to `Restaurant` and has an `enum` called `days`
class RestaurantTiming < ApplicationRecord
  enum days: { monday: 0, tuesday: 1, wednesday: 2, thursday: 3, friday: 4, saturday: 5, sunday: 6 }

  belongs_to :restaurant
end
