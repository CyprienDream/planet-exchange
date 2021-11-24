class PagesController < ApplicationController
  def home
    @categories = Category.all
  end

  def search
    # considering search input is named 'query'
    if params[:query].present?
      @items = Item.find_by_name(params[:query])
    else

      # display or do something if no search input
      @items = ItemStorage.all
    end
      # display or do something if no search input
  end

    # define markers and info window for map

    @markers = @items.map do |item|
      next unless item.storage.geocoded?

      {
        lat: item.storage.latitude,
        lng: item.storage.longitude,
        info_window: render_to_string(partial: "info_window", locals: { item: item })
      }
    end

  end
