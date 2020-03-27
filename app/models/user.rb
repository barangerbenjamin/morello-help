class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :needs
  has_many :services
  has_one_attached :photo
  validates :complex, presence: true, inclusion: [ "Amarelle", "Maraschino", "Rainier", "Santina" ]
  validates :flat_number, presence: true, numericality: { only_integer: true }
end
