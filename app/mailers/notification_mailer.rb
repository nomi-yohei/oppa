class NotificationMailer < ApplicationMailer
	default from: 'no-replay@gmail.com'
  def complete_mail(user)
    @user = User.first
    # @url = "http://localhost:3000/users/#{@user.id}"
    mail(subject: "COMPLETE join your address" ,to: "nomi.yohei.infratop@gmail.com")
  end
end
