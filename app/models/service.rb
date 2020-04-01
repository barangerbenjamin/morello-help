class Service < ApplicationRecord
  belongs_to :user
  belongs_to :need
  has_one_attached :receipt
  monetize :price_cents
end
