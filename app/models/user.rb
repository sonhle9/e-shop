class User < ApplicationRecord
  before_save { self.email = email.downcase }

  validates :name, :email, presence: true, length: { in: 2..40 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, format: { with: VALID_EMAIL_REGEX }, 
            uniqueness: { case_sensitive: false }
  validates :password_digest, presence: true, length: { minimum: 6 }
  has_secure_password
  
  has_many :orders
end