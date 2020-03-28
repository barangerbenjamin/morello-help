class Need < ApplicationRecord
  belongs_to :user
  has_many :services

  validates :quantity, numericality: { only_integer: true }
end
