class Item < ApplicationRecord
  # validates :name, presence: true
  has_one_attached :photo
  has_many :activity_items
  has_many :activities, through: :activity_items
  has_many :item_storages
  has_many :storages, through: :item_storages
  has_many :item_materials
  has_many :materials, through: :item_materials

  def space_taken
   return (height * width).round(3)
  end

  def carbon_footprint
    self.item_materials.each do |m|
      return ((weight * m.percentage_weight) * m.material.co2_per_kilo).round(2)
    end
  end
end
