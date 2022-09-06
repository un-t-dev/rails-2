class Reservation < ApplicationRecord
  
  validates :start_date, :end_date, :person, presence: true
  belongs_to :user
  belongs_to :room_registration
  
  def reservation
    if @reservation.nil.valid?
      'anonymous'
    else
      @reservation
    end
    
end
