class UsersController < Devise::RegistrationsController
  def create
    super
    params[:user][:interest_ids].each do |id|
      InterestUser.create(user: current_user, interest_id: id)
    end
  end

  def show
    @user = User.find(params[:id])
    address = @user.storage.address
    city_country = address.split(",")
    @city = city_country[1]
    storage = @user.storage
    @storage_items = storage.items
  end

  def chatrooms
    messages = Message.where(user: current_user)
    @chatrooms = []
    messages.each do |message|
      @chatrooms << Chatroom.find(message.chatroom_id)
    end
    @chatrooms.uniq!
  end

end
