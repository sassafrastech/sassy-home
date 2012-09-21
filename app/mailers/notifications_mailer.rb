class NotificationsMailer < ActionMailer::Base
  default :from => "info@sassafrastech.com"
  default :to => "jpdimond@gmail.com"
  
  def new_message(message)
    @message = message
    mail(:subject => "Inquiry")
  end
  
end
