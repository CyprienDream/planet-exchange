class Message < ApplicationRecord
  belongs_to :chatroom
  belongs_to :user

  # enum status: { read: 1, new: 0 }
end
