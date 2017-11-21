class Api::MessagesRandomController < ApplicationController
  def show
    render json: Message.order('RANDOM()').first
  end
end
