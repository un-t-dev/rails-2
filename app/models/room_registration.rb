class RoomRegistration < ApplicationRecord
  
  validates :room_name, :introduction, :room_price, :room_erea, :image, presence: true
  mount_uploader :image, ImageUploader
  belongs_to :user
  has_many :reservations
end
