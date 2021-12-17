class ActivityUser < ApplicationRecord
  # define databse relationships
  belongs_to :user
  belongs_to :activity
end
