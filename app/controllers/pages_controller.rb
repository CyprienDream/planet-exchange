class PagesController < ApplicationController
  def home
    @categories = Category.all
  end

  def search
    # considering search input is named 'query'
    if params[:query].present?
      @items = Item.search_by_name(params[:query]) # yet to be implemented
    else
      # display or do something if no search input
      @items = Item.all
    end

    # define markers and info window for map
    @markers = @items.map do |item|
      next unless item.storage.geocoded?

      {
        lat: item.storage.latitude,
        lng: item.storage.longitude,
        # info_window: render_to_string(partial: "info_window", locals: { experience: experience })
        # image_url: helpers.asset_url(experience.photo.key)
      }
    end
  end
end
