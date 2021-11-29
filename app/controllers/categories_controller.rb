class CategoriesController < ApplicationController
  # after_action :verify_authorized, except: [:index, :show]
  # after_action :verify_policy_scoped, only: [:index, :show]
  before_action :verify_authorized!, except: [:index, :show]
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to root_path # needs to change to desired path
    else
      render :new
    end
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end
end
