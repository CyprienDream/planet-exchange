class Storage < ApplicationRecord
  # add geocoding property to address field
  geocoded_by :address
  # allow geocoding only if address has the correct format
  after_validation :geocode, if: :will_save_change_to_address?

  # define database relationships
  belongs_to :user
  has_many :item_storages
  has_many :items, through: :item_storages
end
