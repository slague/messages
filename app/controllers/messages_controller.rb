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
      flash.now[:danger] = "Try again."
      render :new
    end
  end

  private
  def message_params
    params.require(:message).permit(:text, :sender)
  end

end
