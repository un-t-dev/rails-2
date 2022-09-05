class Reservation < ApplicationRecord
  
  validates :start_date, :end_date, :person, presence: true
  belongs_to :user
  belongs_to :room_registration
end
