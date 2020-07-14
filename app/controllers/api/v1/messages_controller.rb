class Api::V1::MessagesController < ApplicationController
  before_action :find_channel
  def index
    messages = Message.where(channel: @channel)
    render json: messages
  end

  def create

  end

  private
  def params_channel
    params.require(:channel_id)
  end

  def find_channel
    @channel = Channel.find_by(name: params_channel)
  end
end
