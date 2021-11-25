class StoragesController < ApplicationController
  def new
    @storage = Storage.new
  end

  def show
    @storage = Storage.find(params[:id])
  end

  def create
    @storage = Storage.new(storage_params)
    @storage.user = current_user
    # raise
    if @storage.save
      params[:storage][:item_ids].each do |id|
        ItemStorage.create(storage_id: @storage.id, item_id: id)
      end
      redirect_to user_path(current_user) # needs to change to desired path
    else
      render :new
    end
  end

  private

  def storage_params
    params.require(:storage).permit(:address, :item_ids)
  end
end
