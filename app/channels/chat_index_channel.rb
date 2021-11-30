class ChatIndexChannel < ApplicationCable::Channel
  def subscribed
    # chatroom.users.each do |user|
    #   @user = user if user != current_user
    # end
    stream_for User.find(params[:id])
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
