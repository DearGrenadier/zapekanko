class ChatRoomsController < ApplicationController
  def create
    @chat_room = ChatRoom.new(chat_room_params)
    @chat_room.save!
    render status: 200, nothing: true
  end

  private

  def chat_room_params
    params.require(:chat_room).permit(:name, :longtitude, :latitude)
  end
end
