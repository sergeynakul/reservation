class Booking < ApplicationRecord
  belongs_to :table
  validates :user, presence: true
  validates :date, uniqueness: true 
=begin
  before_validation :unique_booking

  private
  
  def unique_booking
  	exiting_date = []

  	Booking.all.each do |booking|
  		exiting_date << (booking.date...booking.date + booking.duration * 60)
  	end

    if exiting_date.each {|dt| dt === (self.date..self.date + self.duration * 60) }
      errors.add(:date, 'of the table booking is the same as the existing booking. Please choose another time.')
    end
  end
=end
end
