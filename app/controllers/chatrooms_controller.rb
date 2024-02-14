class ChatroomsController < ApplicationController

  def index
    @chatrooms = Chatroom.all
    @public_chatrooms = @chatrooms.select { |chatroom| chatroom.chatroom_type == "public" }
    @user_chatrooms = @chatrooms.find { |chatroom| chatroom.name == current_user.bullying_type }
    @threads_chatrooms = @chatrooms.select { |chatroom| chatroom.chatroom_type == "thread" }
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
    @all_users = User.all
    if  @chatroom.name == current_user.bullying_type
      @users = User.where(bullying_type: current_user.bullying_type)
    else
      @users = User.all
    end
  end
  def new
    @chatroom = Chatroom.new
  end

  def create
    @chatroom = Chatroom.new(chatroom_params)
    @chatroom.save!
    redirect_to chatroom_path(@chatroom)
  end

  private

  def chatroom_params
    params.require(:chatroom).permit(:name, :chatroom_type)
  end
end
