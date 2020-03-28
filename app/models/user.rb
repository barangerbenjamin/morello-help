class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :needs
  has_many :services
  has_one_attached :photo
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :complex, presence: true, inclusion: [ "Amarelle", "Maraschino", "Rainier", "Santina" ]
  validates :flat_number, presence: true, numericality: { only_integer: true }

  def full_name
    first_name.capitalize + " " + last_name.capitalize
  end
  
end
