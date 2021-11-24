class Storage < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  belongs_to :user
  has_many :item_storages
  has_many :items, through: :item_storages
end
