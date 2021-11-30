class StoragesController < ApplicationController
  def new
    # instantiate a storage to be available in new view
    @items = Item.all
    @storage_old = Storage.find_by(user: current_user)
    if @storage_old
      redirect_to edit_storage_path(@storage_old)
    else
      @storage = Storage.new
    end
  end

  def show
    # retreive desired insance from db
    @storage = Storage.find(params[:id])
  end

  def create
    # create new storage instance with parameters provided from new form
    #  @storage_old = Storage.find_by(user: current_user)
    # if @storage_old
    #   redirect_to edit_storage_path(@storage_old)
    # else
      @storage = Storage.new(storage_params)
      # set storage owner as current user
      @storage.user = current_user
      if @storage.save
        # create relationships between items and storage
        params[:storage][:item_ids].each do |id|
          ItemStorage.create(storage_id: @storage.id, item_id: id.to_i)
        end
        # redirect to user profile upon storage creation
        redirect_to user_path(current_user)
      else
        # show form again if instance cannot be saved
        render :new
      end
    # end
      # raise
  end

  def edit
    @storage = Storage.find(params[:id])
    @items = Item.all
    @user_items = @storage.item_storages
  end

  def update
    @storage = Storage.find(params[:id])
    @storage.update(storage_params)
    if @storage.save
        # create relationships between items and storage
        params[:storage][:item_ids].each do |id|
          ItemStorage.create(storage_id: @storage.id, item_id: id.to_i)
        end
        # redirect to user profile upon storage creation
        redirect_to user_path(current_user)
    end
  end
  private

  def storage_params
    params.require(:storage).permit(:address, :item_ids)
  end
end
