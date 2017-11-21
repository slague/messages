class MessagesController < ApplicationController

  def index
    @messages =  Message.all
  end

  def new
   @message = Message.new
  end

  def create
    @message = Message.new(message_params)
   if @message.save
      flash[:success] = "Your message has been sent! It will appear on John's MagicMirror soon."
     redirect_to new_message_path
   else
     flash.now[:danger] = "#{@message.errors.messages.first[0]} #{@message.errors.messages.first[1][0]}"
     render :new
   end
  end

  private
  def message_params
    params.permit(:message, :sender)
  end

end
