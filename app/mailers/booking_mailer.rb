class BookingMailer < ActionMailer::Base
  default from: "from@example.com"

  def bookingsent_email(booking)
  	@booking = booking
    @service = booking.service
  	mail(to: @booking.email, subject: 'Thankyou for your booking')
  end

  def booking_received(booking)
  	@booking = booking
    @service = booking.service
  	mail(to: 'andrewkemp70@gmail.com', subject: 'Booking from DayDesk')
  end
end
