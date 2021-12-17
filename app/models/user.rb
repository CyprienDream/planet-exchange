class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # attach cloudinary picture
  has_one_attached :photo

  # define databse relationships
  has_many :interest_users
  has_many :interests, through: :interest_users
  has_one :storage
  has_many :chatroom_users
  has_many :chatrooms, through: :chatroom_users
  has_many :messages

end
