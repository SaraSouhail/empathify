class ChatroomsController < ApplicationController

  def index
    @chatrooms = Chatroom.all
    @general = @chatrooms.find { |chatroom| chatroom.name == "general" }
    @user_chatrooms = @chatrooms.find { |chatroom| chatroom.name == current_user.bullying_type }
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end
end
