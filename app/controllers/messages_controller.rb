class MessagesController < ApplicationController
  
  def index
    @messages = Message.find_or_create_default
  end

  def update
    @message = Message.find(params[:id])
    @message.update_attributes(params[:message])
  end
  
end
