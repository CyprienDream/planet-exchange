class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one_attached :photo
  has_many :interest_users
  has_many :interests, through: :interest_users
  has_one :storage
  has_many :chatroom_users
  has_many :chatrooms, through: :chatroom_users
  has_many :messages
  # enum role: %i[member admin]


  # after_initialize do
  #   if self.new_record?
  #     self.role ||= :member
  #   end
  # end
  # accepts_nested_attributes_for :interests
end
