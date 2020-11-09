class InquiryMailer < ApplicationMailer
	default from: 'from@example.com'
	def send_mail(inquiry)
 		@inquiry = inquiry
 		mail(
 		from: @inquiry.email,
   		to:   ENV['GMAIL_USERNAME'],
   		subject: "#{@inquiry.subject}についてのご質問です。"
 		)
	end
end
