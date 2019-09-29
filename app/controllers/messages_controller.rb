class MessagesController < ApplicationController
  before_action :authenticate_user!

  def create
    message = current_user.messages.build(message_params)
    if message.save
      ActionCable.server.broadcast "chatroom_channel", content: message.body
    else
      redirect_to root_path
    end
  end

  private

  def message_params
    params.require(:message).permit(:body)
  end
end