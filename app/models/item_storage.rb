class ItemStorage < ApplicationRecord
  # define databse relationships
  belongs_to :storage
  belongs_to :item
end
