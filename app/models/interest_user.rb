class InterestUser < ApplicationRecord
  # define databse relationships
  belongs_to :user
  belongs_to :interest
end
