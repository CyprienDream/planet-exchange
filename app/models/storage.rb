class Storage < ApplicationRecord
  belongs_to :user
  has_many :item_storages
  has_many :items, through: :item_storages
end
