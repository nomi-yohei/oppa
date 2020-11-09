class Public::InquiryController < ApplicationController
	def create
    inquiry = Inquiry.new(contact_params)
    # binding.pry
    if inquiry.save
      InquiryMailer.send_mail(inquiry).deliver_now

      flash[:success] = 'お問い合わせを受け付けました'
    end
  end

  private

  def contact_params
    params.require(:inquiry).permit(:email, :message,:subject,:name)
  end
end
