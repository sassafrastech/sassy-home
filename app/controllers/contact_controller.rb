class ContactController < ApplicationController
  def index
    @message = Message.new
  end

  def create
    @message = Message.new(params[:message])

    if @message.valid?
      NotificationsMailer.new_message(@message).deliver unless params[:other].present? # Check honeypot
      flash[:notice] = "Message was successfully sent."
      redirect_to(:action => :index)
    else
      flash[:error] = @message.errors.full_messages.join(", ")
      render :index
    end
  end

end
