class ActivitiesController < ApplicationController
  def show
    @activity = Activity.find(params[:id])
    @items = @activity.items

  end

  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.new(activity_params)
    if @activity.save
      redirect_to root_path # needs to change to desired path
    else
      render :new
    end
  end

  private

  def activity_params
    params.require(:activity).permit(:name, :category_id, :item_ids)
  end
end
