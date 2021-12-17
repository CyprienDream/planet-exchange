class Material < ApplicationRecord
  # define databse relationships
  has_many :item_materials
  has_many :items, through: :item_materials
end
