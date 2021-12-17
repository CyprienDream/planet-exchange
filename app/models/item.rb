class Item < ApplicationRecord
  # attach cloudinary picture
  has_one_attached :photo

  # define databse relationships
  has_many :activity_items
  has_many :activities, through: :activity_items
  has_many :item_storages
  has_many :storages, through: :item_storages
  has_many :item_materials
  has_many :materials, through: :item_materials

  # define search tool for name field
  include PgSearch::Model
  pg_search_scope :search_by_name,
                  against: [:name],
                  using: {
                    tsearch: {
                      prefix: true
                    }
                  }

  # calculates the volume of an item
  def space_taken
    return ((height * width * length ))
  end

  # calculates the carbon footprint of an item
  def carbon_footprint_calc
    carbon = 0
    self.item_materials.each do |m|
      carbon += ((weight * m.percentage_weight) * m.material.co2_per_kilo).round(2)
    end
    self.carbon_footprint = carbon.round(3)
    self.save!
  end
end
