class ChatroomsController < ApplicationController

  def index
    @chatrooms = Chatroom.all
    @public_chatrooms = @chatrooms.select { |chatroom| chatroom.chatroom_type == "public" }
    @user_chatrooms = @chatrooms.find { |chatroom| chatroom.name == current_user.bullying_type }
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end

  def new
    @chatroom = Chatroom.new
  end

  def create
    @chatroom = Chatroom.new(chatroom_params)
    @chatroom.save!
    redirect_to chatrooms_path
  end

  private

  def chatroom_params
    params.require(:chatroom).permit(:name, :chatroom_type)
  end
end
