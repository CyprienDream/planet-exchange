class Item < ApplicationRecord
  # validates :name, presence: true
  has_one_attached :photo
  has_many :activity_items
  has_many :activities, through: :activity_items
  has_many :item_storages
  has_many :items, through: :item_storages

end
