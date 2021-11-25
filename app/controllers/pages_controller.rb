class PagesController < ApplicationController

  def home
    @categories = Category.all
  end

  def search
    # considering search input is named 'query'
    if params[:query].present?
      @items_instances = Item.search_by_name(params[:query])
      @items = []
      ItemStorage.all.each do |item_storage|
       @items << item_storage if @items_instances.include?(item_storage.item)
      end

    end
      # display or do something if no search input
      @markers = @items.map do |item|
        next unless item.storage.geocoded?

        {
          lat: item.storage.latitude,
          lng: item.storage.longitude,
          info_window: render_to_string(partial: "info_window", locals: { item: item })
        }
      end
  end

end
