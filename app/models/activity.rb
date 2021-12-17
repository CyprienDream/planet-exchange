class Activity < ApplicationRecord
  # define databse relationships
  belongs_to :category
  has_many :activity_items
  has_many :items, through: :activity_items

  # attach cloudinary picture
  has_one_attached :photo
end
