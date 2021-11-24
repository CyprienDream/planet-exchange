class Material < ApplicationRecord
  has_many :item_materials
  has_many :items, through: :item_materials
end
