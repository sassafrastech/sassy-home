class NotificationsMailer < ActionMailer::Base
  default :from => "info@sassafras.coop"
  default :to => ["jpdimond@gmail.com", "tomsmyth@gmail.com"]
  
  def new_message(message)
    @message = message
    mail(:subject => "Inquiry")
  end
  
end
