class Cafe < ApplicationRecord
  has_many :cafe_crowded_points
  has_many :message_rooms
end