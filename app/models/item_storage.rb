class ItemStorage < ApplicationRecord
  belongs_to :storage
  belongs_to :item
end
