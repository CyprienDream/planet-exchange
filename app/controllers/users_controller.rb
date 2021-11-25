class UsersController < Devise::RegistrationsController
  def create
    super
    params[:user][:interest_ids].each do |id|
      InterestUser.create(user: current_user, interest_id: id)
    end
  end

  def show
    @user = User.find(params[:id])
    address = @user.storages.first.address
    city_country = address.split(",")
    @city = city_country[1]
    storage = @user.storages.first
    @storage_items = storage.items

  end

end
