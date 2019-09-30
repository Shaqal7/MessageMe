class MessagesController < ApplicationController
  before_action :authenticate_user!

  def create
    message = current_user.messages.build(message_params)
    if message.save
      ActionCable.server.broadcast "chatroom_channel", content: [current_user.email, message, (message.created_at).strftime("%F %T" )]
    else
      redirect_to root_path
    end
  end

  private

  def message_params
    params.require(:message).permit(:body)
  end
end