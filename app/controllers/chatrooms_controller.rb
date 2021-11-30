class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
    @chatroom.users.each do |user|
      @displayed_name = user.username if user != current_user
    end
  end

  def create
    # do not assign name
    @user = User.find(request.referer.split("/").last.to_i)
    @chatroom = Chatroom.create(name: "#{current_user.username} - #{@user.username}")
    @user.chatrooms << @chatroom
    current_user.chatrooms << @chatroom
    redirect_to chatroom_path(@chatroom)
  end
end
