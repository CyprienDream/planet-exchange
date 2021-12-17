class ItemMaterial < ApplicationRecord
  # define databse relationships
  belongs_to :item
  belongs_to :material
end
