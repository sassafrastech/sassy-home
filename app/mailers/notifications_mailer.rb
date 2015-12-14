class NotificationsMailer < ActionMailer::Base
  default :from => "info@sassafras.coop"
  default :to => "info@sassafras.coop"

  def new_message(message)
    @message = message
    subject = "Inquiry from " + message.name.to_s
    mail(:subject => subject)
  end

end
