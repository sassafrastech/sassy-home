class NotificationsMailer < ActionMailer::Base
  default :from => "info@sassafras.coop"
  default :to => "info@sassafras.coop"

  def new_message(message)
    @message = message
    subject = "Inquiry from " + message.name.to_s
    reply_address = message.email.to_s
    mail(:subject => subject)
    mail(:reply_to => reply_address)
  end

end
