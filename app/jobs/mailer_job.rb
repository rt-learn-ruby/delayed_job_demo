# frozen_string_literal: true

class MailerJob
  def initialize(id)
    @id = id
  end

  def perform
    user = User.find(@id)
    UserMailer.send_mailer(user).deliver
  end
end
