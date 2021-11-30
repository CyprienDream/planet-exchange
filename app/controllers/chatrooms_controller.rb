class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
    @chatroom.users.each do |user|
      @user = user if user != current_user
    end
  end

  def create
    @user = User.find(request.referer.split("/").last.to_i)

    Chatroom.all.each do |chatroom|
      @chatroom = chatroom if chatroom.users.include?(@user) && chatroom.users.include?(current_user)
    end
    if @chatroom.nil?
      @chatroom = Chatroom.create(name: "#{current_user.username} - #{@user.username}")
      @user.chatrooms << @chatroom
      current_user.chatrooms << @chatroom
    end
    redirect_to chatroom_path(@chatroom)
  end
end
