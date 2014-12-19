class NotificationsMailer < ActionMailer::Base
  default :from => "info@sassafras.coop"
  default :to => ["info@sassafras.coop"]

  def new_message(message)
    @message = message
    mail(:subject => "Inquiry")
  end

end
