class Need < ApplicationRecord
  belongs_to :user
  has_many :services
  validates :name, length: { in: 3..20 }
  validates :end_time, presence: true
  validates :category, presence: true, inclusion: [ "Groceries", "Service" ]
  validates :quantity, numericality: { only_integer: true }

  def remaining_time
    end_time - DateTime.now
  end

  def end_time_in_future?
    end_time > DateTime.now
  end
  
  
end
