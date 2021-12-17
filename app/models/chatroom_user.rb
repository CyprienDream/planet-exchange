class ChatroomUser < ApplicationRecord
  # define databse relationships
  belongs_to :chatroom
  belongs_to :user
end
