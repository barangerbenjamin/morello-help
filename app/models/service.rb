class Service < ApplicationRecord
  attr_accessor :reimburse
  belongs_to :user
  belongs_to :need
  has_one :chatroom
  has_one_attached :receipt
  monetize :price_cents
end
