class Message < ApplicationRecord
  belongs_to :user
  belongs_to :message_room
  has_many :answer_details
end