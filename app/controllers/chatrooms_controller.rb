class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end

  def create
    @user = User.find(request.referrer[-1])
    @chatroom = Chatroom.create(name: @user.username)
    redirect_to chatroom_path(@chatroom)
  end
end
