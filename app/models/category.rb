class Category < ApplicationRecord
  # attach cloudinary picture
  has_one_attached :photo

  # define databse relationships
  has_many :activities
end
