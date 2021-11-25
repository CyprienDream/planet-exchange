class ItemStoragesController < ApplicationController
  def edit
    @storage = Storage.find(params[:id])
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

  private

  def item_storage_params
    params.require(:item_storage).permit(:specification)
  end
end
