class ChannelController < ApplicationController
  def index
    @messages = Message.all
  end
end