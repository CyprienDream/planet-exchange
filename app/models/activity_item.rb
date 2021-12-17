class ActivityItem < ApplicationRecord
  # define databse relationships
  belongs_to :activity
  belongs_to :item
end
