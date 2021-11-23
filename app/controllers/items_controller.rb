class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
  item_params.activity_ids.each do |id|
    ActivityItem.create(activity_id: id, item: @item)
  end
    if @item.save!
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def item_params
    params.require(:item).permit(:name, :photo, activity_ids: [])
  end
end
