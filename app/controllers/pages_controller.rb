class PagesController < ApplicationController

  def home
    @categories = Category.all
  end

  def search
    # considering search input is named 'query'
    # raise
    if params[:query].present? || params[:search_array].present?

      if params[:query].present?
        @items_instances = Item.search_by_name(params[:query])
      else
        @items_instances = []
        # @items_instances = Item.search_by_name(Item.find(params[:search][:item_id]).name)
        params[:search_array].each do |name|
          @items_instances += Item.search_by_name(name)
        end
      end
      @storage_items = []
      ItemStorage.all.each do |item_storage|
        @storage_items << item_storage if @items_instances.include?(item_storage.item)
      end

      @markers = @storage_items.map do |item_storage|
        next unless item_storage.storage.geocoded?

        {
          lat: item_storage.storage.latitude,
          lng: item_storage.storage.longitude,
          info_window: render_to_string(partial: "info_window", locals: { item: item_storage }),
          image_url: helpers.asset_url(item_storage.item.photo.filename)
        }


      end

    end
  end

end
