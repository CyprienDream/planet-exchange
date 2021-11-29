class ItemStorage < ApplicationRecord
  belongs_to :storage
  belongs_to :item
  # belongs_to :user, through: :storages
end
