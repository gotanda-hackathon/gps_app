class User < ApplicationRecord
  has_many :messages
  has_many :cafe_customers
  has_many :message_rooms
end