class User < ApplicationRecord
  has_many :posts
  has_many :comments



  # before_save { |user| user.email = email.downcase }
  #
  # validates :name, presence: true, length: { maximum: 50 }
  # VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  # validates :email, presence:   true,
  #           format:     { with: VALID_EMAIL_REGEX },
  #           uniqueness: { case_sensitive: false }
  # validates :password, presence: true, length: { minimum: 6 } if new?
  # validates :password_confirmation, presence: true if new?








  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
