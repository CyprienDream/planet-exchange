class ItemStoragesController < ApplicationController

  def new
      @new_item_storage = ItemStorage.new
  end

  def create
    @storage = Storage.find_by(user: current_user)
    @new_item_storage = ItemStorage.new
    if params[:item_id].nil?
      redirect_to edit_storage_path(@storage)
    else
      @new_item_storage.item = Item.find(params[:item_id])
      @new_item_storage.storage =  @storage
      @new_item_storage.save!
      redirect_to edit_storage_path(@storage)
    end
  end

  def edit
    @item_storage = ItemStorage.find(params[:id])
  end

  def update
    @item_storage = ItemStorage.find(params[:id])
    @item_storage.update(item_storage_params)
    if @item_storage.save
      redirect_to storage_path(@item_storage.storage)
    else
      render :edit
    end
  end

  def destroy
    @item_storage = ItemStorage.find(params[:id])
    @storage_current = @item_storage.storage
    @item_storage.destroy
    redirect_to edit_storage_path(@storage_current)
  end

  private

  def item_storage_params
    params.require(:item_storage).permit(:specification, :item_id)
  end
end
