class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :room_registrations
  has_many :reservations
  
  has_one_attached :avatar
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :full_name, presence: true, length: {maximum: 50}
end
