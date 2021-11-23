class Activity < ApplicationRecord
  belongs_to :category
  has_many :activity_items
  has_many :items, through: :activity_items
  has_one_attached :photo
end
