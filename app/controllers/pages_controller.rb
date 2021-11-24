class PagesController < ApplicationController
  def home
    @categories = Category.all
  end

  def search
    # considering search input is named 'query'
    if params[:query].present?
      @items = Item.find_by_name(params[:query])
    else
      @items = Item.all
    end
      # display or do something if no search input
  end

    # define markers and info window for map
    # @markers = @items.geocoded.map do |item|
    #   {
    #     lat: item.storage.latitude,
    #     lng: item.storage.longitude,
    #     # info_window: render_to_string(partial: "info_window", locals: { experience: experience })
    #     # image_url: helpers.asset_url(experience.photo.key)
    #   }
    # end
  end
