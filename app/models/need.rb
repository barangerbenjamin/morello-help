class Need < ApplicationRecord
  belongs_to :user
  has_many :services
  validates :name, length: { in: 3..20 }
  validates :end_time, presence: true
  validates :category, presence: true, inclusion: [ "Groceries", "Service" ]
  validates :quantity, numericality: { only_integer: true }
end
