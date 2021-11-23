class Interest < ApplicationRecord

  has_one_attached :photo

  has_many :interest_users
  has_many :users, through: :interest_users
end
