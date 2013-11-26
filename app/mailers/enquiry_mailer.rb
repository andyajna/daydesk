class EnquiryMailer < ActionMailer::Base
  default from: "andrewkemp70@gmail.com"

  def enquiry_email(enquiry)
  	@enquiry = enquiry
    @supplier = enquiry.supplier
  	mail(to: @enquiry.email, subject: 'Thankyou for your enquiry')
  end

  def enquiry_received(enquiry)
  	@enquiry = enquiry
    @supplier = enquiry.supplier
  	mail(to: 'andrewkemp70@gmail.com', subject: 'Enquiry from DayDesk')
  end
end
