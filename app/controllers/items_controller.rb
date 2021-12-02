class ItemsController < ApplicationController
  after_action :verify_authorized, only: [:new, :create, :edit, :destroy]

  def index
    # if params[:query].present?
    # end
    # else
    #   @items = ItemStorage.all
    # end
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    authorite @item
    item_params.activity_ids.each do |id|
      ActivityItem.create(activity_id: id, item: @item)
    end
    if @item.save!
      redirect_to root_path # needs to change to desired path
    else
      render :new
    end
  end



  private

  def item_params
    params.require(:item).permit(:name, :photo, :weight, :height, :width, :length,:carbon_footprint, activity_ids: [])
  end
end
