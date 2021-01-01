# frozen_string_literal: true

class User < ApplicationRecord
  after_create :send_user_mailer

  def send_user_mailer
    Delayed::Job.enqueue(MailerJob.new(id), run_at: Time.now + 1.minute)
  end
end
