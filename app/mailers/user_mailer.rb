#
class UserMailer < ApplicationMailer
  default from: 'from@example.com'

  def send_mailer(user)
    @user = user
    mail(to: @user.email, subject: "You're the man now, #{@user.name}")
  end
end
