class Need < ApplicationRecord
  belongs_to :user
  has_many :services
  validates :name, length: { in: 3..20 }
  validates :quantity, numericality: { only_integer: true }
end
