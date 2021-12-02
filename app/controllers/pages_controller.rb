class PagesController < ApplicationController
  def home
    @categories = Category.all
    items_raw = Item.pluck(:name).sort
    @items = items_raw.to_json
  end

  def search
    items_raw = Item.pluck(:name).sort
    @items = items_raw.to_json

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

      owners_all = []
      @storage_items.each do |storage_item|
        owners_all << storage_item.storage.user
      end
      @owners = owners_all.reject { |owner| owner == current_user }
      @owners.uniq!
      # def belongs_to_user(owner)
      #   owner.storage.items.select { |item| @storage_items.include?(item) }
      # end

      # @owners.each do |owner|
      #  @owner_items_found = owner.storage.items.select { |item| @storage_items.include?(item.id)}
      # end

      @belongings = []
      @owners.each do |owner|
        @belongings << [owner, []]
      end

      @storage_items.each do |storage_item|
        if storage_item.storage.user != current_user
          found = @belongings.index { |e| e[0] == storage_item.storage.user }
          @belongings[found][1] << storage_item
        end
      end

      @markers = @belongings.map do |belonging|
        {
          lat: belonging[0].storage.latitude,
          lng: belonging[0].storage.longitude,
          info_window: render_to_string(partial: "info_window", locals: { belonging: belonging }),
          image_url: belonging[0].photo.service_url
          # image_url: helpers.cl_img('arrow.svg')
        }
      end
    else

    end
  end

  def dashboard
    @user = current_user
  end
end
