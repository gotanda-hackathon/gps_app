class CafeCrowdedPoint < ApplicationRecord
  belongs_to :cafe
  enum day_of_week: { sunday: 1, monday: 2, tuesday: 3, wednesday: 4, thursday: 5, friday: 6, saturday: 7 }
end