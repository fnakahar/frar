class RoomMessagesController < ApplicationController
  before_action :load_entities

  def create
    @room_message = RoomMessage.create customer: current_customer,
                                       room: @room,
                                       message: params.dig(:room_message, :message)
  end

  protected

  def load_entities
    @room = Room.find params.dig(:room_message, :room_id)
  end
end
