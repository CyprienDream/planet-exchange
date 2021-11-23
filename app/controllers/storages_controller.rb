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
    if @storage.save
      redirect_to root_path # needs to change to desired path
    else
      render :new
    end
  end

  private

  def storage_params
    params.require(:storage).permit(:address)
  end
end
