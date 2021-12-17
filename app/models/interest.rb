class Interest < ApplicationRecord
  # attach cloudinary picture
  has_one_attached :photo

  # define databse relationships
  has_many :interest_users
  has_many :users, through: :interest_users
end
