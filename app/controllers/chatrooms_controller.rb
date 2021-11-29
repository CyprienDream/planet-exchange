class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end

  def create
    # do not assign name
    @user = User.find(request.referer.split("/").last.to_i)
    @chatroom = Chatroom.create(name: "XxXx")
    @user.chatrooms << @chatroom
    current_user.chatrooms << @chatroom
    redirect_to chatroom_path(@chatroom)
  end
end
