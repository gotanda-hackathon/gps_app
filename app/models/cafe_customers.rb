class CafeCustomer < ApplicationRecord
  belongs_to :cafe
  belongs_to :uses
  enum status: { stay: 1, going: 2 }
end