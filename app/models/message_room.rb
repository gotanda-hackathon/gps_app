class MessageRoom < ApplicationRecord
  belongs_to :cafe
  belongs_to :going_user_id, class_name: 'User'
  belongs_to :stay_user_id, class_name: 'User'
  has_many :messages
end